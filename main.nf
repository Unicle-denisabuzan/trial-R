params.function_rds = './input/function.rds'
params.input_rds = './input/input.rds'


process my_script {

    input:
    path my_function_rds
    path my_input_rds

    output:
    path "output.rds"

    """
    #!/usr/bin/env Rscript

    FUN <- readRDS("${my_function_rds}");
    input = readRDS("${my_input_rds}");
    output = FUN(
      singleCell_data_input=input[[1]], savePath=input[[2]], tmpDirGC=input[[3]]
    );
    saveRDS(output, "output.rds")
    """
}

workflow {

    function_rds = file( params.function_rds )
    input_rds = file( params.input_rds )

    my_script( function_rds, input_rds )
    my_script.out.view()
}

