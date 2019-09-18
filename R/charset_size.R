#' Character-Set Size
#'
#' Determine the Charset size based on what combination of characters has been used in the password
#'
#' @param x a character string of the password to test
#' @return a numeric value of the charset size
#'
#' @export

charset_size <- function(x)
{
    CHARSET <- c(0, 0, 0, 0)

    if (isTRUE(stringr::str_detect(x , '[:punct:]'))) {
        CHARSET[1] <- 22
    }

    if (isTRUE(stringr::str_detect(x , '[:upper:]'))) {
        CHARSET[2] <- 26
    }

    if (isTRUE(stringr::str_detect(x , '[:lower:]'))) {
        CHARSET[3] <- 26
    }

    if (isTRUE(stringr::str_detect(x , '[:digit:]'))) {
        CHARSET[4] <- 10
    }

    CHARSET_SIZE <- sum(CHARSET)

    return(CHARSET_SIZE)
}
