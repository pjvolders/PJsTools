\name{apply_pb}
\alias{apply_pb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Apply with a fancy progress bar
}
\description{
A wrapper for \code{apply()} with a progress bar
}
\usage{
apply_pb(X, MARGIN, FUN, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{...}{
  an array, including a matrix.
  }
  \item{MARGIN}{
  a vector giving the subscripts which the function will be applied over. E.g., for a matrix 1 indicates rows, 2 indicates columns, c(1, 2) indicates rows and columns. Where X has named dimnames, it can be a character vector selecting dimension names.
  }
  \item{FUN}{
  the function to be applied: see ‘Details’. In the case of functions like +, \%*\%, etc., the function name must be backquoted or quoted.
  }
  \item{...}{
  optional arguments to FUN.
  }
}
\details{
All arguments are passed to \code{apply()}. Internally, the function uses \code{progress_estimated()} from the dplyr package.
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
\code{\link{apply}}
}
\examples{
## large dataset
df <- data.frame(rnorm(300000), rnorm(300000))
apply_pb(df, 1, sd)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
