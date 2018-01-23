\name{read.clip}
\alias{read.clip}
\title{
Read data from clipboard
}
\description{
Reads data in table format from clipboard and creates a data frame from it, with cases corresponding to lines and variables to fields in the data.
}
\usage{
read.clip(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{...}{
Further arguments to be passed to \code{read.delim}
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
## Write some sample data to clipboard
clip <- pipe("pbcopy", "w")                       
write.table(cars, file=clip, sep = "\t")    
close(clip)

## Read data from the clipboard
my_cars = read.clip(sep = "\t")
head(my_cars)
}
