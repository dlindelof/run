#' @export
run <- function(path, ...) {
  name <- package_name(path)
  remotes::install_local(path, upgrade = "never")
  main <- getFromNamespace("main", name)
  main()
}

package_name <- function(path) {
  sub("_.*$", "", basename(path))
}
