#!/usr/bin/env Rscript
nextflow.enable.dsl=2 

process my_script {
    """
    ./input/script.R
    """
}


workflow {
        my_script()
}

