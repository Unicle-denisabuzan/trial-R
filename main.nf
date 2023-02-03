#!/usr/bin/env Rscript
nextflow.enable.dsl=2 
params.script_R='/workspace/example_nf/example_nf/bin/script.R'

process my_script {
    input: 
    path script_r

    """
   "Rscript ${script_r}"
    """
}


workflow {
        script_r=file(params.script_R)
        my_script(script_r)
  
}
