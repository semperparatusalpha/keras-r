#!/usr/bin/env Rscript

install.packages('devtools')
devtools::install_github('rstudio/keras')
install.packages('reticulate')
reticulate::use_python('/opt/conda/bin/python')

require(tensorflow)
require(reticulate)
require(keras)

is_keras_available()
system('which_python')
sys.setenv(TENSORFLOW_PYTHON='/opt/conda/bin/python')
use_python('/opt/conda/bin/python')

py_discover_config('tensorflow')
py_discover_config('keras')
is_keras_available()