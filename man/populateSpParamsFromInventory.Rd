% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/populateGrowthForm.R
\encoding{UTF-8}
\name{populateSpParamsFromInventory}
\alias{populateSpParamsFromInventory}
\alias{populateGrowthForm}
\alias{populateHeightParams}
\alias{populateTreeDiameterHeightParams}
\title{Populate species parameters from inventory data}
\usage{
populateGrowthForm(
  SpParams,
  tree_codes,
  shrub_codes = character(0),
  erase_previous = FALSE,
  fill_fromGenus = FALSE
)

populateHeightParams(
  SpParams,
  species_codes,
  height_values,
  quantile_Hmed = 0.5,
  quantile_Hmax = 0.99,
  erase_previous = FALSE
)

populateTreeDiameterHeightParams(
  SpParams,
  species_codes,
  height_values,
  diameter_values,
  quantile_fHDmin = 0.05,
  quantile_fHDmax = 0.95,
  erase_previous = FALSE
)
}
\arguments{
\item{SpParams}{A data frame of medfate species parameters to be populated}

\item{tree_codes}{String vector of tree species codes}

\item{shrub_codes}{String vector of shrub species codes}

\item{erase_previous}{A boolean flag to indicate that values should be set to NA before populating with data}

\item{fill_fromGenus}{A boolean flag to indicate that genus adscription of species should be used to fill missing values}

\item{species_codes}{A string vector of species codes}

\item{height_values}{A numeric vector of plant heights (in cm)}

\item{quantile_Hmed}{Quantile for Hmed}

\item{quantile_Hmax}{Quantile for Hmax}

\item{diameter_values}{A numeric vector of tree diameter at breast height (in cm)}

\item{quantile_fHDmin}{Quantile for fHDmin}

\item{quantile_fHDmax}{Quantile for fHDmax}
}
\value{
A modified data frame of medfate species parameters
}
\description{
Functions to populate species parameter values from forest inventory source data
}
\seealso{
\code{\link{initSpParams}}
}
\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, EMF-CREAF
}
