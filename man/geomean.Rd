\name{geomean}
\alias{geomean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the geometric mean
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
geomean(x, na.rm = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    numeric vector
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
mean(c(2,8))
geomean(c(2,8))

geomean(c(4,1,1/32))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
