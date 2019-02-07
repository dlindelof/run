#' Run an R package
#'
#' Installs an R package provided as a tarball, installs its dependencies,
#' and runs the package's `main()` function.
#'
#' @param path path to a package tarball
#' @param ... other arguments (currently ignored)
#' @export
run <- function(path, ...) {
  name <- package_name(path)
  remotes::install_local(path, upgrade = "never")
  main <- utils::getFromNamespace("main", name)
  main()
}

package_name <- function(path) {
  sub("_.*$", "", basename(path))
}
