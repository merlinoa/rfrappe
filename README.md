
<!-- README.md is generated from README.Rmd. Please edit that file -->
rfrappe
=======

[![Build Status](https://travis-ci.org/merlinoa/rfrappe.svg?branch=master)](https://travis-ci.org/merlinoa/rfrappe) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/pkgdown)](https://cran.r-project.org/package=rfrappe)

`rfrappe` is an R htmlwidget for the [Frappe Charts](https://github.com/frappe/charts) JavaScript library. Frappe Charts creates simple, responsive, modern SVG charts with zero dependencies. `Frappe Charts` and `rfrappe` are in very early development, so expect breaking changes.

Installation
------------

``` r
devtools::install_github("merlinoa/rfrappe")
```

Usage
-----

``` r
library(rfrappe)

data <- list(
  labels = c("12am-3am", "3am-6pm", "6am-9am", "9am-12am", "12pm-3pm", 
             "3pm-6pm", "6pm-9pm", "9am-12am"),
  datasets = list(
    list(
      title = "Some Data",
      color = "light-blue",
      values = c(25, 40, 30, 35, 8, 52, 17, -4)
    ),
    list(
      title = "Another Set",
      color = "violet",
      values = c(25, 50, -10, 15, 18, 32, 27, 14)
    )
  )
)

rfrappe(list(
  title = "My Awesome Bar Chart",
  data = data,
  type = "bar"
))
```

![](README_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-2-1.png)
