# S1 \~ S5

### S1. 2D Vector Magnitude

Define a function `magnitude :: (Float, Float) -> Float` that takes a 2D coordinate tuple and computes its distance from the origin using the formula $$\sqrt{x^2 + y^2}$$.

#### Hints

use **sqrt** for square root.

#### Test cases

{% code expandable="true" %}

```hs
ghci> magnitude (3.0, 4.0)
5.0
ghci> magnitude (cos(pi/6), sin(pi/6))
1.0
```

{% endcode %}

#### S2. Vector Dot Product

Define a vector dot product function **vecdot** which takes two Lists of the **Num** type class  and return the dot product.

Write the function declaration and body.

#### Hints

Use **zipWith (\*)** and **sum** .

#### Test cases

{% code expandable="true" %}

```hs
ghci> vecdot [1,2,3] [4,5,6]
32
ghci> vecdot [1.0, 2.0] [-2.0, 1.0]
0.0
```

{% endcode %}

### S3 Take the second element from a pair tuple

Write a function **select\_second** to take the second element from a pair tuple (with arbitrary element types) using pattern matching.

You cannot use the **snd** function.

#### Hints:

Using function argument pattern matching and the wildcard \_

#### Test cases

{% code expandable="true" %}

```hs
ghci> select_second (1.0, 2.0)
2.0
ghci> select_second (1007001, "Alice")
"Alice"
```

{% endcode %}

### S4 List slicing &#x20;

Write a **slice** function which takes a start position and end position and extracts the slice from **start** until the **end** (not including the end, assume $$end \ge start$$ always holds), similar to **lst\[start:end]** in Python.

#### Hints

Use **take** and **drop**

#### Test cases

{% code expandable="true" %}

```hs
ghci> slice 1 4 [1..5]
[2,3,4]
ghci> slice 3 10 "University of Derby"
"versity"
```

{% endcode %}

### S5 Check a list of Strings if they are Palindromes

Write a function **checkPalindrome**  to check a list of Strings, returning the True or False status for each of the String in the list if they are Palindromes.

A List is Palindromes if it is the same as its reverse, such as "madam" and "noon", or "121" and "1331".

#### Hints

Use **map** and **reverse** .

You can write a function to check if a String is palindrome or directly use a lambda function.

#### Test cases

{% code expandable="true" %}

```hs
checkPalindrome ["racecar", "level", "noon", "A", ""] -- [True,True,True,True,True]
checkPalindrome [ "racecar", "hello", "121" , "world", "level"] -- [True,False,True,False,True]
checkPalindrome ["123", "noon", "haskell", "1331"] -- [False,True,False,True]
```

{% endcode %}