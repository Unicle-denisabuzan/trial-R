#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process INDEX {

    """
    Rscript input/script.R
    """
}


workflow {
  //process is called like a function in the workflow block
  INDEX()
}
