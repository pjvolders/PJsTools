\name{cg_content}
\alias{cg_content}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the CG content of a DNA sequence
}
\description{
This function calculates the CG content as fraction of C and G characters in a string. The function is case insensitive.
}
\usage{
cg_content(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A character vector
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A numeric vector containing the CG percentages of each element in \code{x}
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
my_dna = c("ACGTACGTACGTACGT", "CCCGGGAAAT", "ACGTACGTacgtacgt") 

cg_content(my_dna) # 0.5, 0.6, 0.5
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
