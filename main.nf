#!/usr/bin/env Rscript
nextflow.enable.dsl=2 

process my_script {
    """
    Rscript script.R
    """
}


workflow {
        my_script()
}

