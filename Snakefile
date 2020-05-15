rule mapping_opt1:
    input:
        "chrX_data/samples/ERR188044_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188044_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188104_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188104_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188234_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188234_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188245_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188245_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188257_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188257_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188273_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188273_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188337_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188337_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188383_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188383_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188401_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188401_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188428_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188428_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188454_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188454_chrX_2.fastq.gz",
        "chrX_data/samples/ERR204916_chrX_1.fastq.gz",
        "chrX_data/samples/ERR204916_chrX_2.fastq.gz"
    output:
        "ERR188044_chrX.sam",
        "ERR188104_chrX.sam",
        "ERR188234_chrX.sam",
        "ERR188245_chrX.sam",
        "ERR188257_chrX.sam",
        "ERR188273_chrX.sam",
        "ERR188337_chrX.sam",
        "ERR188383_chrX.sam",
        "ERR188401_chrX.sam",
        "ERR188428_chrX.sam",
        "ERR188454_chrX.sam",
        "ERR204916_chrX.sam"
    shell:
        """
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188044_chrX_1.fastq.gz -2 chrX_data/samples/ERR188044_chrX_2.fastq.gz -S ERR188044_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188104_chrX_1.fastq.gz -2 chrX_data/samples/ERR188104_chrX_2.fastq.gz -S ERR188104_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188234_chrX_1.fastq.gz -2 chrX_data/samples/ERR188234_chrX_2.fastq.gz -S ERR188234_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188245_chrX_1.fastq.gz -2 chrX_data/samples/ERR188245_chrX_2.fastq.gz -S ERR188245_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188257_chrX_1.fastq.gz -2 chrX_data/samples/ERR188257_chrX_2.fastq.gz -S ERR188257_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188273_chrX_1.fastq.gz -2 chrX_data/samples/ERR188273_chrX_2.fastq.gz -S ERR188273_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188337_chrX_1.fastq.gz -2 chrX_data/samples/ERR188337_chrX_2.fastq.gz -S ERR188337_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188383_chrX_1.fastq.gz -2 chrX_data/samples/ERR188383_chrX_2.fastq.gz -S ERR188383_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188401_chrX_1.fastq.gz -2 chrX_data/samples/ERR188401_chrX_2.fastq.gz -S ERR188401_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188428_chrX_1.fastq.gz -2 chrX_data/samples/ERR188428_chrX_2.fastq.gz -S ERR188428_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR188454_chrX_1.fastq.gz -2 chrX_data/samples/ERR188454_chrX_2.fastq.gz -S ERR188454_chrX.sam
        hisat2 -p 6 --upto 200000 --dta -x chrX_data/indexes/chrX_tran -1 chrX_data/samples/ERR204916_chrX_1.fastq.gz -2 chrX_data/samples/ERR204916_chrX_2.fastq.gz -S ERR204916_chrX.sam
        """
        
rule mapping_opt2:
    input:
        "chrX_data/samples/ERR188044_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188044_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188104_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188104_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188234_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188234_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188245_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188245_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188257_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188257_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188273_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188273_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188337_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188337_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188383_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188383_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188401_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188401_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188428_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188428_chrX_2.fastq.gz",
        "chrX_data/samples/ERR188454_chrX_1.fastq.gz",
        "chrX_data/samples/ERR188454_chrX_2.fastq.gz",
        "chrX_data/samples/ERR204916_chrX_1.fastq.gz",
        "chrX_data/samples/ERR204916_chrX_2.fastq.gz"
    params:
        threads=6,
        n_of_reads=200000,
        genome_index="chrX_data/indexes/chrX_tran"
    output:
        "ERR188044_chrX.sam",
        "ERR188104_chrX.sam",
        "ERR188234_chrX.sam",
        "ERR188245_chrX.sam",
        "ERR188257_chrX.sam",
        "ERR188273_chrX.sam",
        "ERR188337_chrX.sam",
        "ERR188383_chrX.sam",
        "ERR188401_chrX.sam",
        "ERR188428_chrX.sam",
        "ERR188454_chrX.sam",
        "ERR204916_chrX.sam"
    shell:
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[0]} -2 {input[1]} -S {output[0]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[2]} -2 {input[3]} -S {output[1]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[4]} -2 {input[5]} -S {output[2]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[6]} -2 {input[7]} -S {output[3]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[8]} -2 {input[9]} -S {output[4]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[10]} -2 {input[11]} -S {output[5]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[12]} -2 {input[13]} -S {output[6]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[14]} -2 {input[15]} -S {output[7]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[15]} -2 {input[17]} -S {output[8]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[16]} -2 {input[19]} -S {output[9]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[17]} -2 {input[21]} -S {output[10]};"
        "hisat2 -p {params.threads} --upto {params.n_of_reads} --dta -x {params.genome_index} -1 {input[18]} -2 {input[23]} -S {output[11]};"