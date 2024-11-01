#' GC Content Calculator
#'
#' This function calculates the GC content (percentage of G and C nucleotides) in a DNA sequence.
#'
#' @param sequence A character string representing the DNA sequence (e.g., "ATGCCGTA").
#' @return A numeric value representing the GC content percentage.
#' @examples
#' gc_content("ATGCCGTA")
#' gc_content("GGGCCC")
#' @export
gc_content <- function(sequence) {
  # To check if the input is of length 1
  if (!is.character(sequence) || length(sequence) != 1) {
    stop("Input must be a single character string representing a DNA sequence.")
  }

  # Convert sequence to uppercase and split into individual nucleotides
  seq_vector <- strsplit(toupper(sequence), "")[[1]]

  # Count no of G and C in a given sequence
  g_count <- sum(seq_vector == "G")
  c_count <- sum(seq_vector == "C")

  # Calculate GC count
  gc_count <- ((g_count + c_count) / length(seq_vector)) * 100
  return(gc_count)
}

