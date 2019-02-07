# run

The `run` package facilitates the deployment of R application bundled as R packages. It
will automatically install the package and its dependencies, and run the package's `main()`
function if it exists.

## Installation

You can install the released version of run from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("run")
```

## Example

Suppose your application has been packaged as `myapp_0.1.0.tar.gz`. To run your application,
run the following from the shell:

``` console
foo@bar:~$ Rscript -e "run::run('myapp_0.1.0.tar.gz')"
```

