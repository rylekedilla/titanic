# Script summary
#   Render RMarkdown files, output to docs/
#
# Output Files
#   docs/explore_data.html

#-- Setup ---------------------------------------------------------------------
# wrapper for render(), render RMarkdown file based on argument
wrap_render <- function(arg, out_dir) {
  fns <- switch(
    arg,
    "explore_data" = c("explore_data.Rmd", "explore_data")
  )
  rmarkdown::render(fns[1], output_dir = out_dir, output_file = fns[2])
}

#------------------------------------------------------------------------------

#-- Main ----------------------------------------------------------------------
args = commandArgs(trailingOnly = TRUE)
# place valid arguments here
valid_args <- c(
  "explore_data"
)

# abort script if invalid argument
if (!(args[1] %in% valid_args)) {
  stop("Invalid argument", call. = FALSE)
} 

wrap_render(args[1], "docs")

#------------------------------------------------------------------------------
