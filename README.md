# 📐 Gauss–Jordan Elimination 

Operasi Baris Elementer (OBE) / Elementary Row Operations (ERO) using R.

## 📌 Project Overview

This mini project implements Elementary Row Operations using the Gauss–Jordan Elimination method in R.

The program performs step-by-step matrix transformation, including:

- Pivoting
- Row scaling
- Row elimination
- Conversion to echelon form

This project is intended for learning and demonstrating fundamental concepts in linear algebra using R.

## 🧠 Concepts Covered

🔹 Elementary Row Operations (ERO)

The implementation follows the three standard operations:

- **Row Swapping** : Interchanging two rows.
- **Row Scaling** : Dividing a row by its pivot element.
- **Row Replacement (Elimination)** : Subtracting a multiple of one row from another row.

🔹 Gauss–Jordan Elimination

The function transforms a matrix into Row Echelon Form through:

- Partial pivoting (choosing the largest absolute pivot)
- Normalizing pivot rows
- Eliminating non-zero elements above and below pivot positions

## ⚙️ Main Function
```shell
apply_gauss_jordan_elimination()
```
Function Features:
- Displays the original matrix
- Shows every step of pivoting
- Shows scaling process
- Shows elimination process
- Prints the final echelon form

All steps are printed clearly for educational purposes.
