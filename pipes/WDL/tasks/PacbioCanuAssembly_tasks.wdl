
task PacbioCanu{

	File input_fastq
	String input_type
	String genome_size

	command{
		/software/canu-1.8/Linux-amd64/bin/canu \
		-p canu -d test genomeSize=${genome_size}m \
		${input_type} ${input_fastq} 1>temp.out 2>temp.err
		mkdir ../iwandresultfiles
		cp -r temp.out temp.err test ../iwandresultfiles

	}

	output{
		File genome = "../iwandresultfiles/test/contigs.fasta"
	}

	runtime{
		docker :"canu:wsws";
		cpu : "5";
		memory : "40G"
		}

}