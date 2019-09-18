#' Password Strength
#'
#' Test the strength of a password
#'
#' @param x a character string of the password to test
#' @return a list of two elements
#'  - ENTROPY; a numeric value for the password entropy
#'  - STRENGTH; a strength rating of the password (Very Weak, Weak, Moderate, Strong, or Very Strong)
#'
#' @export

password_strength <- function(x)
{
    CHARSET <- as.numeric(charset_size(x))

    ENTROPY <- log2(CHARSET ^ nchar(x))

    if (ENTROPY < 28) {
        STRENGTH <- 'Very Weak'
    }
    if (ENTROPY >= 28 & ENTROPY <= 35) {
        STRENGTH <- 'Weak'
    }
    if (ENTROPY >= 36 & ENTROPY <= 59) {
        STRENGTH <- 'Moderate'
    }
    if (ENTROPY >= 60 & ENTROPY <= 127) {
        STRENGTH <- 'Strong'
    }
    if (ENTROPY >= 128) {
        STRENGTH <- 'Very Strong'
    }

    return(list(ENTROPY = ENTROPY, STRENGTH = STRENGTH))
}
