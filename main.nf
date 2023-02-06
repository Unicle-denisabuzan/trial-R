params.function_rds = './input/function.rds'
params.input_rds = './input/input.rds'
params.script_r='./input/script.R'

process my_script {

    input:
    path my_function_rds
    path my_input_rds
    path my_script_r

    output:
    path "output.rds"

    """
    Rscript "${my_script_r}" "${my_function_rds}" "${my_input_rds}" output.rds
    """
}

workflow {

    function_rds = file( params.function_rds )
    input_rds = file( params.input_rds )
    script_r = file(params.script_r)

    my_script( function_rds, input_rds, script_r )
    my_script.out.view()
}
