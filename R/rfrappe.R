#' rfrappe
#'
#' create a Frappe chart widget
#'
#' @param options list of chart options
#' @param
#'
#' @import htmlwidgets
#' @export
#'
#' @examples
#' rfrappe(list(
#'   data = list(
#'     labels = c("12am-3am", "3am-6pm", "6am-9am", "9am-12am", "12pm-3pm", "3pm-6pm", "6pm-9pm", "9am-12am"),
#'     datasets = list(
#'       list(
#'         title = "Some Data",
#'         color = "light-blue",
#'         values = c(25, 40, 30, 35, 8, 52, 17, -4)
#'       ),
#'       list(
#'         title = "Another Set",
#'         color = "violet",
#'         values = c(25, 50, -10, 15, 18, 32, 27, 14)
#'       )
#'     )
#'   )
#' ))
#'
rfrappe <- function(options, width = NULL, height = NULL) {

  if (is.null(options$type) || !options$type %in% c("bar", "line", "scatter", "percentage")) {
    options$type <- "line"
  }

  if (is.null(options$title)) {
    options$title <- ""
  }

  x <- options

  htmlwidgets::createWidget("rfrappe", x, width = width, height = height, package = "rfrappe")
}
