# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

sendWSMessage <- function(conn, binary, message) {
    invisible(.Call('_httpuv_sendWSMessage', PACKAGE = 'httpuv', conn, binary, message))
}

closeWS <- function(conn) {
    invisible(.Call('_httpuv_closeWS', PACKAGE = 'httpuv', conn))
}

makeTcpServer <- function(host, port, onHeaders, onBodyData, onRequest, onWSOpen, onWSMessage, onWSClose) {
    .Call('_httpuv_makeTcpServer', PACKAGE = 'httpuv', host, port, onHeaders, onBodyData, onRequest, onWSOpen, onWSMessage, onWSClose)
}

makePipeServer <- function(name, mask, onHeaders, onBodyData, onRequest, onWSOpen, onWSMessage, onWSClose) {
    .Call('_httpuv_makePipeServer', PACKAGE = 'httpuv', name, mask, onHeaders, onBodyData, onRequest, onWSOpen, onWSMessage, onWSClose)
}

destroyServer <- function(handle) {
    invisible(.Call('_httpuv_destroyServer', PACKAGE = 'httpuv', handle))
}

run <- function(timeoutMillis) {
    .Call('_httpuv_run', PACKAGE = 'httpuv', timeoutMillis)
}

stopLoop <- function() {
    invisible(.Call('_httpuv_stopLoop', PACKAGE = 'httpuv'))
}

base64encode <- function(x) {
    .Call('_httpuv_base64encode', PACKAGE = 'httpuv', x)
}

daemonize <- function(handle) {
    .Call('_httpuv_daemonize', PACKAGE = 'httpuv', handle)
}

destroyDaemonizedServer <- function(handle) {
    invisible(.Call('_httpuv_destroyDaemonizedServer', PACKAGE = 'httpuv', handle))
}

#' URI encoding/decoding
#' 
#' Encodes/decodes strings using URI encoding/decoding in the same way that web
#' browsers do. The precise behaviors of these functions can be found at
#' developer.mozilla.org:
#' \href{https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURI}{encodeURI},
#' \href{https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent}{encodeURIComponent},
#' \href{https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/decodeURI}{decodeURI},
#' \href{https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/decodeURIComponent}{decodeURIComponent}
#' 
#' Intended as a faster replacement for \code{\link[utils]{URLencode}} and
#' \code{\link[utils]{URLdecode}}.
#' 
#' encodeURI differs from encodeURIComponent in that the former will not encode
#' reserved characters: \code{;,/?:@@&=+$}
#' 
#' decodeURI differs from decodeURIComponent in that it will refuse to decode
#' encoded sequences that decode to a reserved character. (If in doubt, use
#' decodeURIComponent.)
#' 
#' The only way these functions differ from web browsers is in the encoding of
#' non-ASCII characters. All non-ASCII characters will be escaped byte-by-byte.
#' If conformant non-ASCII behavior is important, ensure that your input vector
#' is UTF-8 encoded before calling encodeURI or encodeURIComponent.
#' 
#' @param value Character vector to be encoded or decoded.
#' @return Encoded or decoded character vector of the same length as the
#'   input value.
#'
#' @export
encodeURI <- function(value) {
    .Call('_httpuv_encodeURI', PACKAGE = 'httpuv', value)
}

#' @rdname encodeURI
#' @export
encodeURIComponent <- function(value) {
    .Call('_httpuv_encodeURIComponent', PACKAGE = 'httpuv', value)
}

#' @rdname encodeURI
#' @export
decodeURI <- function(value) {
    .Call('_httpuv_decodeURI', PACKAGE = 'httpuv', value)
}

#' @rdname encodeURI
#' @export
decodeURIComponent <- function(value) {
    .Call('_httpuv_decodeURIComponent', PACKAGE = 'httpuv', value)
}

invokeCppCallback <- function(data, callback_sexp) {
    invisible(.Call('_httpuv_invokeCppCallback', PACKAGE = 'httpuv', data, callback_sexp))
}

#' Apply the value of .Random.seed to R's internal RNG state
#'
#' This function is needed in unusual cases where a C++ function calls
#' an R function which sets the value of \code{.Random.seed}. This function
#' should be called at the end of the R function to ensure that the new value
#' \code{.Random.seed} is preserved. Otherwise, Rcpp may overwrite it with a
#' previous value.
#'
#' @keywords internal
#' @export
getRNGState <- function() {
    invisible(.Call('_httpuv_getRNGState', PACKAGE = 'httpuv'))
}

