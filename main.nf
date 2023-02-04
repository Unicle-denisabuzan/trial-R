#!/usr/bin/env Rscript
nextflow.enable.dsl=2 

process my_script {
    """
     script.R
    """
}


workflow {
        my_script()
}

