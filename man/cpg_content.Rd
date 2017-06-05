\name{cpg_content}
\alias{cpg_content}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the CpG content of a DNA sequence
}
\description{
This function calculates the CpG content as fraction of CG dinucleotides in a string. This is the number of CG dinucleotides over all dinucleotides. The function is case insensitive.
}
\usage{
cpg_content(x)
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
A numeric vector containing the CpG percentages of each element in \code{x}
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

cpg_content(my_dna) # 0.2666667 0.1111111 0.2666667
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
