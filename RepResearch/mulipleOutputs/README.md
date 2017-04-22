## multipleOutputs documentation
**By Emanuel Valero**

### Description

Project to allow generate multiple output reports by passing parameters (see Markdown Parameter) to a default .Rmd template. Outputs files are saved in `outputs` directory.

### How to use

1. Open the **`render.R`** file with your RStudio
2. Set up your own parameters to the param_list.
3. Run the **`render.R`** script by using the statement `source("render.R")`

Folowing this steps you can generate the count of files deteminated by length of lists `varx` and `vary` in `param_list` of your predefined **`render.R`**.

### Setting up parameters.

The `param_list` is the way to to pass parameters to `document.Rmd` template. You can find it at top of `render.R` script file in root directory of `multipleOutputs`. Default values for this list are:

- **`title`**. "Motor Trend Car Road Tests"
- **`author`**. "Emanuel Valero"
- **`date`**. "2017-04-20"
- **`data`**. mtcars
- **`varx`**. list("mpg", "mpg", "mpg")
- **`desx`**. list("Miles/(US) gallon", "Miles/(US) gallon", "Miles/(US) gallon")
- **`varx`**. list("drat", "wt", "qsec")
- **`desy`**. list("Rear axle ratio", "Weight (1000 lbs)", "1/4 mile time")
