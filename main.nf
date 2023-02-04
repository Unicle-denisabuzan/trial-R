
process my_script {

    input:
    path my_function_rds
    path my_input_rds
    path my_script_r

    output:
    path "output.rds"

    """
    Rscript  "${my_script_r}" "${my_function_rds}" "${my_input_rds}" output.rds
    """
}

workflow {


    my_script.out.view()
}
