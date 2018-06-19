\name{fdr_cutoff}
\alias{fdr_cutoff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
FDR cutoff calculations
}
\description{
Calculates a cutoff value based on a gold standard negative set.
}
\usage{
fdr_cutoff(predictions, labels, fdr_cutoff=0.01)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predictions}{
Whatever score the cutoff should be based on.
}
  \item{labels}{
\code{TRUE}/\code{FALSE} vector indicating whether or not the prediction is from the unknown set.
}
  \item{fdr_cutoff}{
  The desired false discovery rate. Default is 1%%.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The cutoff value in the range of \code{predictions}.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
fdr_cutoff(iris$Petal.Length, iris$Species == 'virginica')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
