# Function OBE (Operasi Baris Elementer) / Elementary Row Operations

# Gauss-Jordan Elimination

apply_gauss_jordan_elimination <- function(A) {
  n <- nrow(A)
  m <- ncol(A)
  
  cat("Original Matrix (A):\n")
  print(A)
  
  for (i in 1:min(n, m)) {
    # Pivoting
    pivot_row <- which.max(abs(A[i:n, i])) + (i - 1)
    cat("\nStep", i, ": Pivoting (Row", i, "with Row", pivot_row, ")\n")
    A[c(i, pivot_row), ] <- A[c(pivot_row, i), ]
    print(A)
    
    # Scaling
    pivot <- A[i, i]
    cat("\nStep", i, ": Scaling (Row", i, "divided by", pivot, ")\n")
    A[i, ] <- A[i, ] / pivot
    print(A)
    
    # Eliminasi
    for (j in 1:n) {
      if (j != i) {
        factor <- A[j, i]
        cat("\nStep", i, ": Eliminasi (Row", j, "minus", factor, "multiplied Row", i, ")\n")
        A[j, ] <- A[j, ] - factor * A[i, ]
        print(A)
      }
    }
  }
  
  cat("\nMatriks Echelon Form:\n")
  print(A)
}

# example

# no 3a
A <- matrix(c(4,4,-4,8,3,-1,1,2,-1,-1,1,0), ncol = 4, byrow = TRUE)

apply_gauss_jordan_elimination(A)

# no 4
A <- matrix(c(2,3,2,0,-1,6,10,0,4,2,-4,0), ncol = 4, byrow = TRUE)

apply_gauss_jordan_elimination(A)

29*29

14*65

sqrt(-29)

A <- matrix(c(1,1,1,3,1,2,2,5,1,3,1,5,1,4,2,7), ncol = 4, byrow = TRUE)
A

det(A)


# no 2
a = matrix(c(1,1,1,1,1,2,3,4,1,2,1,2,3,5,5,7), ncol=4,byrow=TRUE)
det(a)