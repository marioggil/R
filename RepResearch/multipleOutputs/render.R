## Input parameters to add to the header of document.Rmd template
param_list <- list(
    author = "Emanuel Valero",
    data   = "mtcars",
    varx   = list("mpg", "mpg", "mpg"),
    desx   = list("Miles/(US) gallon","Miles/(US) gallon", "Miles/(US) gallon"),
    vary   = list("drat", "wt", "qsec"),
    desy   = list("Rear axle ratio", "Weight (1000 lbs)", "1/4 mile time")
)

## function to render reports based on parameters that are passed to
## document.Rmd template
render_report <- function(author, data, varx, desx, vary, desy) {
    temp = "document.Rmd"
    of <- sprintf("outputs/%s_%s_vs_%s.docx", author, varx, vary)
    pars <- list(
        author = author, data = data,
        varx   = varx,   desx = desx,
        vary   = vary,   desy = desy
    )
    
    rmarkdown::render(temp, output_file = of, params = pars)
    invisible(TRUE)
}

## render reports  over multiple params
purrr::pmap(param_list, render_report)
