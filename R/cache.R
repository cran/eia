#' Clear API results cache
#'
#' Reset the results of API calls that are currently cached in memory.
#'
#' \code{eia_clear_cache} clears the entire cache. The other functions clear the cache associated with specific endpoints.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' key <- Sys.getenv("EIA_KEY") # your stored API key
#' system.time(eia_cats(key))
#' system.time(eia_cats(key))
#' eia_clear_cache()
#' system.time(eia_cats(key))
#' }
eia_clear_cache <- function(){
  eia_clear_cats()
  eia_clear_series()
  eia_clear_geoset()
  invisible()
}

#' @rdname eia_clear_cache
#' @export
eia_clear_cats <- function(){
  memoise::forget(.eia_cats_memoized)
  invisible()
}

#' @rdname eia_clear_cache
#' @export
eia_clear_series <- function(){
  memoise::forget(.eia_series_memoized)
  invisible()
}

#' @rdname eia_clear_cache
#' @export
eia_clear_geoset <- function(){
  memoise::forget(.eia_geoset_memoized)
  invisible()
}
