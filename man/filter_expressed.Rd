\name{filter_expressed}
\alias{filter_expressed}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Remove not expressed probes from a matrix of probes
}
\description{
Remove not expressed probes from a matrix (probes in rows, samples in columns) based on a reference probe (e.g. Dark Corner probes).
}
\usage{
filter_expressed(data, relative_cutoff = 1, darkcorner_rowname = 'DarkCorner', nr_of_samples = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
    The probe matrix (probes in rows, samples in columns)
}
  \item{relative_cutoff}{
    The relative offset to the dark corner probe required to be considered expressed
}
  \item{darkcorner_rowname}{
    The rowname of the reference probe
}
  \item{nr_of_samples}{
    The number of samples that the probe has to be expressed in
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


}
