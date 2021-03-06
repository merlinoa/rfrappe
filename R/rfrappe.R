#' rfrappe
#'
#' create a Frappe chart widget
#'
#' @param options list of chart options
#' @param width does nothing right now
#' @param height does nothing right now
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

  if (is.null(options$type) || !options$type %in% c("bar", "line", "scatter", "percentage", "pie", "heatmap")) {
    options$type <- "line"
  }

  if (is.null(options$title)) {
    options$title <- ""
  }

  x <- options

  htmlwidgets::createWidget("rfrappe", x, width = width, height = height, package = "rfrappe")
}

#' renderFrappe
#'
#' Widget render function for use in Shiny
#'
#' @param expr An rfrappe expression.
#' @param env An enviorment.
#' @param quoted  A boolean value.
#'
#' @importFrom htmlwidgets shinyRenderWidget
#' @export
renderFrappe <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) {
    expr <- substitute(expr)
  } # force quoted
  htmlwidgets::shinyRenderWidget(expr, frappeOutput, env, quoted = TRUE)
}

#' frappeOutput
#'
#' Widget output function for use in Shiny
#'
#' @param outputId The name of the input
#' @param width Must be a valid CSS unit (e.g. "400px", "auto") or a number, which will be coerced to a string and have "px" appended.
#' @param height  Must be a valid CSS unit (e.g. "400px", "auto") or a number, which will be coerced to a string and have "px" appended.
#'
#' @importFrom htmlwidgets shinyWidgetOutput
#' @export
frappeOutput <- function(outputId, width = "100%", height = "250px") {
  htmlwidgets::shinyWidgetOutput(outputId, "rfrappe", width, height, package = "rfrappe")
}
