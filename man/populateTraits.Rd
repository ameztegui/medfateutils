% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/populateTraits.R
\encoding{UTF-8}
\name{populateTraits}
\alias{populateTraits}
\title{Populate species parameters from trait data}
\usage{
populateTraits(
  SpParams,
  trait_table,
  trait_mapping,
  character_traits = FALSE,
  taxon_column = NULL,
  summary_function = "mean",
  summary_params = list(na.rm = TRUE),
  scalar_functions = NULL,
  replace_previous = FALSE,
  erase_previous = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{SpParams}{A data frame of medfate species parameters to be populated.}

\item{trait_table}{A data frame with species traits in columns and row.names corresponding to taxonomic entities.}

\item{trait_mapping}{A named string vector specifying which trait data column should used to populate each medfate param. Elements are data base columns and names are medfate params.}

\item{character_traits}{Boolean flag to treat traits as character-valued}

\item{taxon_column}{A string identifying the column in \code{trait_table} that identifies taxa (normally species). If \code{taxon_column = NULL} then taxon names are taken from row.names.}

\item{summary_function}{A function to summarize multiple values for the same taxonomic entity. By default, arithmetic averages are used, excluding missing values.}

\item{summary_params}{A list of summary function params (by default \code{na.rm=TRUE}).}

\item{scalar_functions}{A named list of scalar functions for traits needing transformation of units or scaling. Names are medfate params.}

\item{replace_previous}{A boolean flag to indicate that non-missing previous values should be replaced with new data}

\item{erase_previous}{A boolean flag to indicate that all previous values should be set to NA before populating with new data}

\item{verbose}{A boolean flag to indicate extra console output}
}
\value{
A modified data frame of medfate species parameters
}
\description{
Generic function to fill medfate species trait parameters from a data table of species traits
}
\seealso{
\code{\link{initSpParams}}
}
\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, EMF-CREAF
}
