# M2 Get the columns of a Matrix

#### Matrix Transpose in Haskell

#### Background

In many areas of computing such as **computer graphics, data science, machine learning, and scientific computing**, data is often represented using **matrices**.

A **matrix** is a rectangular grid of values arranged in **rows and columns**.

An example 2x3 mathematical matrix:

﻿﻿

**Matrix representation in Haskell**

In Haskell, a common way to represent a matrix is as a **list of lists** in row-major order, where:

* The **outer list** represents the list of rows
* Each **inner list** represents one row
* All rows are assumed to have the **same length**

Example:

```hs
type Matrix a = [[a]]
 
m :: Matrix Int
m = [ [1, 2, 3], [4, 5, 6] ]
```

This corresponds to the 2x3 mathematical matrix in row major:

$$
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6
\end{bmatrix}
$$

#### What is a matrix transpose?

The **transpose** of a matrix is obtained by **swapping rows and columns**.

If we have:

﻿﻿﻿

$$
A=\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6
\end{bmatrix}
$$

Then the transpose of A, written as ﻿﻿, is:

﻿﻿

$$
A^T=\begin{bmatrix}
1 & 4\ 2 & 5 \ 3 & 6
\end{bmatrix}
$$

in Haskell list&#x20;

{% code expandable="true" %}

```hs
[ [1,4], [2, 5], [3, 6] ]
```

{% endcode %}

**Intuition:**

* The **first row** becomes the **first column**
* The **second row** becomes the **second column**
* And so on

#### Your Tasks

**Topic:** Lists of Lists

You are given matrices represented as **lists of rows**:

An example **Int** matrix:

```hs
m :: Num a => [[a]]
m = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
```

{% hint style="info" %}
Note: You need to deal with the empty list cases **\[ ]** and **\[ \[ ], ... ]**.
{% endhint %}

#### Task 1 — Obtain the first column of a matrix using head and map&#x20;

The first element of a list can obtained using **head**.

If **head** is applied to every list of a matrix, we can obtain the first column of the matrix.

Try to write the function **firstColumn** using **map** and **head**.

```hs
firstColumn:: Num a => [[a]] -> [a]
```

#### **Task 2 — restColumns — Remove the first column of a matrix using tail and map**&#x20;

Similary the rest of the matrix (with the first column removed) can be obtained using **tail**.

Try to write the function **restColumns** using **map** and **tail**.

```hs
restColumns:: Num a => [[a]] -> [[a]]
```

#### Test cases

{% code expandable="true" %}

```hs
ghci> firstColumn [[1,2,3],[4,5,6],[7,8,9]] -- [1,4,7]
firstColumn [] -- []
firstColumn [[]] -- []
firstColumn [[],[3,4],[5,6]] --[]
restColumns [[1,2,3],[4,5,6],[7,8,9]] -- [[2,3],[5,6],[8,9]]
restColumns [] -- []
restColumns [[]] -- []
restColumns [[],[3,4],[5,6]] -- []
```

{% endcode %}