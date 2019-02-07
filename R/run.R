#' Run an R package
#'
#' Installs an R package provided as a tarball, installs its dependencies,
#' and runs the package's \code{main()} function.
#'
#' @param path path to a package tarball
#' @param ... other arguments (currently ignored)
#'
#' @examples
#' \dontrun{
#' run('myapp_0.1.0.tar.gz')
#' }
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
