#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
Rcpp::DoubleVector cg_content( Rcpp::StringVector myvector ) {
  Rcpp::DoubleVector return_vec(myvector.size());
  for( int i=0; i < myvector.size(); i++ ){
    std::string my_str(myvector(i));
    size_t n_C_G = std::count(my_str.begin(), my_str.end(), 'C') +
      std::count(my_str.begin(), my_str.end(), 'G') +
      std::count(my_str.begin(), my_str.end(), 'c') +
      std::count(my_str.begin(), my_str.end(), 'g');

    float_t pc_C_G = (float)n_C_G/myvector(i).size();
    return_vec(i) = pc_C_G;
  }
  
  return return_vec;
}


// [[Rcpp::export]]
Rcpp::DoubleVector cpg_content( Rcpp::StringVector myvector ) {
  Rcpp::DoubleVector return_vec(myvector.size());
  for( int i=0; i < myvector.size(); i++ ){
    std::string my_str(myvector(i));
    
    size_t n_C_G = 0;
    for ( std::string::iterator it=my_str.begin(); it!=my_str.end(); ++it) {
      if ( (*it == 'C' || *it == 'c') && (*(it+1) == 'G' || *(it+1) == 'g')) {
        n_C_G+=1;
      }
    }

    float_t pc_C_G = (float)n_C_G/(my_str.size()-1);
    return_vec(i) = pc_C_G;
  }
  
  return return_vec;
}


// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
my_dna = c("ACGTACGTACGTACGT", "CCCGGGAAAT", "ACGTACGTacgtacgt") 

# 0.5, 0.6, 0.5
cg_content(my_dna)

# 0.2666667, 0.1111111, 0.2666667
cpg_content(my_dna)
*/
