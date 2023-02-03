 FUN <- readRDS("function.rds");
 input = readRDS("input.rds");
 output = FUN(
singleCell_data_input = input[[1]], savePath = input[[2]], tmpDirGC = input[[3]]
);
 saveRDS(output, "output.rds")


