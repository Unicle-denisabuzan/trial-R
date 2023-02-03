#!/usr/bin/env nextflow
nextflow.enable.dsl=2 
file_name=script.R
process INDEX {

    """
    Rscript ${file_name}
    """
}


workflow {
  //process is called like a function in the workflow block
  INDEX()
}
