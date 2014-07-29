import <- function(D) {
    D <- substr(D, 22, nchar(D))
    assign("aaa_csv_import",
           read.table(text = base64Decode(D), header = TRUE, sep = ","),
           pos = .GlobalEnv)
    getCurrentObjects("bootstrap", NULL, NULL, NULL)
}

import_rdata_url <- function(D) {
    message(D)
    load(url(D), envir = .GlobalEnv)
    getCurrentObjects("bootstrap", NULL, NULL, NULL, spyre)
}


import_rdata <- function(D) {

    load(readBin(textConnection(D), character()), envir = .GlobalEnv)
    getCurrentObjects("bootstrap", NULL, NULL, NULL, spyre)
}

import_quandl <- function(D) {
    assign("quandl_test_import", Quandl(D), pos = .GlobalEnv)
    getCurrentObjects("bootstrap", NULL, NULL, NULL, spyre)
}

