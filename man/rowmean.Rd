\name{rowmean}
\alias{rowmean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Give Column Means of a Matrix or Data Frame, Based on a Grouping Variable
}
\description{
This function is basically a wrapper around rowsum and computes column means across rows of a numeric matrix-like object for each level of a grouping variable. 
}
\usage{
rowmean(x, group, reorder = TRUE, na.rm = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    a matrix, data frame or vector of numeric data. Missing values are allowed. A numeric vector will be treated as a column vector.
}
  \item{group}{
    a vector or factor giving the grouping, with one element per row of x. Missing values will be treated as another group and a warning will be given.
}
  \item{reorder}{
    if \code{TRUE}, then the result will be in order of \code{sort(unique(group))}, if $FALSE$, it will be in the order that groups were encountered.
}
  \item{na.rm}{
    logical (\code{TRUE} or \code{FALSE}). Should \code{NA} (including \code{NaN}) values be discarded?
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rowsum}}
}
\examples{
rowmean(iris$Sepal.Length, iris$Species)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
}