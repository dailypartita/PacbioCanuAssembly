version 1.0
import	"../tasks/PacbioCanuAssembly_task" as PacbioCanu_task

workflow PacbioCanuAssembly{

	File input_fastq
	String input_type
	String genome_size

	call PacbioCanu_task.PacbioCanu as PacbioCanu{
		input:
			input_fastq = input_fastq,
			input_type = input_type,
			genome_size = genome_size
	}

}

