configfile: "config.yaml"

run_in_slurm_env = True
if run_in_slurm_env == True:
    shell.prefix("module load hisat2/2.2.0; module load stringtie/2.0.4; module load samtools/1.3.1; module load stringtie/2.0.4; module load gffread/0.9.8c")

rule all:
    input:
        #mapping
        expand("mapping_out/{samples}.sam", samples=config["mapping"]["inputs"]),
        #sorting_sam
        expand("mapping_out/{samples}.bam", samples=config["mapping"]["inputs"]),
        #assembly
        expand("gtfs/{samples}.gtf", samples=config["mapping"]["inputs"])

rule mapping:
    input:
        expand("{dir}/{samples}_{inputs_sufix}",
        dir=config["mapping"]["inputs_directory"],
        samples=config["mapping"]["inputs"],
        inputs_sufix=config["mapping"]["inputs_sufix"]),
    params:
        genome_index=config["mapping"]["params"]["genome_index"],
        threads=config["mapping"]["params"]["threads"],
        n_of_reads=config["mapping"]["params"]["n_of_reads"],
        samples=config["mapping"]["inputs"],
        inputs_sufix=config["mapping"]["inputs_sufix"],
        dir=config["mapping"]["inputs_directory"],
    output:
        expand("mapping_out/{samples}.sam", samples=config["mapping"]["inputs"])
    shell:
        """
        for file in {params.samples};
        do

            hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {params.dir}/${{file}}_{params.inputs_sufix[0]} -2 {params.dir}/${{file}}_{params.inputs_sufix[1]} -S mapping_out/${{file}}.sam

        done
        """
        
    input:
        expand("mapping_out/{samples}.sam", samples=config["mapping"]["inputs"])
    params:
        threads=config["sorting_sam"]["params"]["threads"]
    output:
        expand("mapping_out/{samples}.bam", samples=config["mapping"]["inputs"])
    shell:
        """
        for sample in {input};
        do

            name=$(basename $sample \".sam\")

            samtools sort -@ {params.threads} -o mapping_out/${{name}}.bam $sample

        done
        """

rule assembly:
    input:
        gtf=expand("{gtf}", gtf=config["assembly"]["params"]["annotation"]),
        bam=expand("mapping_out/{samples}.bam", samples=config["mapping"]["inputs"])
    params:
        threads=config["assembly"]["params"]["threads"],
    output:
        expand("gtfs/{samples}.gtf", samples=config["mapping"]["inputs"])
    shell:
        """
        for sample in {input.bam}
        do

            prefix_name=$(basename $sample \"_chrX.bam\")

            stringtie $sample -G {input.gtf} -p {params.threads} -o gtfs/${{prefix_name}}_chrX.gtf -l ${{prefix_name}}

        done
        """
