# Exercises

for Week A01-A02

### S1 Function divide for Int numbers

Task: Write a **divide** function for **Int**, in a .hs file.

1 Declare the function type which has two arguments and one return

2 Write the function body. Use the **div** function.

Caution: it is not correct if you directly write&#x20;

{% hint style="danger" %}

```haskell
a div b
```

{% endhint %}

as **div** is a function instead of an operator, such as /, ry to think it well.

3 Test your function in Ghci

* Load the file in Ghci using **:load filename**
* Use **:type** or **:t** to show the type of your function&#x20;
* Call your function with two integer numbers
* What is going to happen if you divide a number by zero ?

{% code expandable="true" %}

```haskell
ghci> :load S1_divide.hs
[1 of 2] Compiling Main             ( S1_divide.hs, interpreted )
Ok, one module loaded.
ghci> :type divide
divide :: Int -> Int -> Int
ghci> divide 8 4
2
ghci> divide 8 0
*** Exception: divide by zero
```

{% endcode %}

### S2 Calculate the volume of a cylinder

Task: Write a function to calculates the volume of a cylinder given the radius and height in a .hs file&#x20;

Equation:$$V = \pi r^2 h$$  Haskells knows pi as a constant.

1  Declare the function type with a return type of **Float** or type class **Floating**

2 Write the function body

3 Test your function in GHCi or using the main function

{% code expandable="true" %}

```haskell
ghci> :load S2_volumeCylinder.hs
[1 of 2] Compiling Main             ( S2_volCylinder.hs, interpreted )
Ok, one module loaded.
ghci> volumeCylinder 2 5
62.831856
```

{% endcode %}

### S3 minOfTwo : find the minimum of two orderable elements

Follow the **max2, max3, and maxOfTwo** function examples in the lecture slides and this lab tutorial

1  Declare the function type using type class **Ord** to ensure the two elements can be compared.

2 Write the function body using **if-then-else** or **Guards**&#x20;

3 Test your function in **GHCi** or using the **main** function

The following is the example using **GHCi**

{% code expandable="true" %}

```haskell
ghci> :load S3_minOfTwo.hs
[1 of 2] Compiling Main             ( minOfTwo.hs, interpreted )
Ok, one module loaded.
ghci> minOfTwo 2 3
2
ghci> minOfTwo 2.0 3.0
2.0
ghci> minOfTwo 'a' 'b'
'a'
ghci> minOfTwo "London" "Derby"
"Derby"
```

{% endcode %}

### S4 tellSignNum: tell if a number is positive, negative, or zero

Write a funciton to tell if a number is postive, negative, or zero using Guards

1. Function declaration, using two type classes **Ord** and **Num** for the number and the return type is **String. Ord** is required for comparing with 0, while **Num** is required for &#x30;**.**
2. Function body: using Guards to implement comparison with 0 and return "Positive", "Zero", "Negative"

#### Testing

Test using ghci or the main function

{% code expandable="true" %}

```hs
ghci> :load S4_tellSignNum.hs
[1 of 2] Compiling Main             ( tellSignNum.hs, interpreted )
Ok, one module loaded.
ghci> tellSignNum 5
"Positive"
ghci> tellSignNum (-5)
"Negative"
ghci> tellSignNum 0
"Zero"
```

{% endcode %}

When you are testing a negative number, you need to use braces to include it or use  the $ sign

{% hint style="info" %}
{% code expandable="true" %}

```haskell
-- Correct
tellSign (-5)
tellSign $ -5

-- Incorrect (Causes a type or parse error)
tellSign -5
```

{% endcode %}
{% endhint %}

### S5 The product of all numbers in a list: `myProduct`

Task: Define a custom function (e.g., `myProduct`) that computes the product of a list of **numbers** recursively in a .hs file

1. Function declaration:  you **MUST** use type class **Num** in function declaration&#x20;
2. Function body

myProduct should return 1 for an empty list

Hint: Follow the same structural pattern as the `sum_list` function in section 6 , keeping in mind the base case for multiplication.

#### Testing

Test your function in GHCi or using the main function.&#x20;

The following is the GHCi example:

{% code expandable="true" %}

```haskell
ghci> :load S5_myProduct.hs
[1 of 2] Compiling Main  ( myProduct.hs, interpreted )
Ok, one module loaded.
ghci> myProduct [1..5]
120
ghci> myProduct [1.0..5.0]
120.0
ghci> myProduct [2, 3, 4]
24
```

{% endcode %}

### M1 Filter (keep) all the odd numbers in a list

### a  isOdd

Write function **isOdd** function which checks if a number is odd in a .hs file.

#### a.1  Declare the function type

&#x20;Takes an integer (type class **Integral** ), and returns a **Bool**.

#### a.2 Write the function body.&#x20;

Use function **mod** or **rem** to check the remainder of the given number divided by 2 is not 0

{% hint style="info" %}
the not euqual operator in Haskell is /=
{% endhint %}

Set the function value to **False** if the number can be divided by 2 (Use mod), otherwise **True**.

#### b Write a main function (using the do-notation)

**b.1** Write hard-coded test code of **isOdd** in the main function

#### c Create a filter\_odd function&#x20;

**c.1** function declararation of **filter\_odd**

using type class **Integral**, the input and output are both a list of **Integral**.

**c.2** function body

implement filter\_odd using **filter** and **isOdd**

The **filter** function can be used to select elements in a list based on a bool predicate function, for example, choosing all even numbers from a list

{% code expandable="true" %}

```haskell
filter predicate_func a_list
```

{% endcode %}

**c.3** Write test code of **filter\_odd** in the main function (using the **do**-notation)

#### d Use the lambda function

Follow the lambda function examles in the lecture slides, replace isOdd with a lambda function, write code to output the test results in the main function.

#### e Compile the programe using ghc

**e.1** Run the program to ouput text test results for isOdd, filter\_odd and filtering odd number using a lambda function.&#x20;

{% code expandable="true" %}

```hs
ghc .\M1_filterOdd.hs
[1 of 2] Compiling Main             ( M1_filterOdd.hs, M1_filterOdd.o )
[2 of 2] Linking M1_filterOdd.exe
> .\M1_filterOdd.exe
isOdd 2 : False
filter_odd [1..10]
[1,3,5,7,9]
filter odd numbers in [1..10] using lambda function
[1,3,5,7,9]
```

{% endcode %}

### M2 Free-fall distance sequence calculator

Task: Write a function **freeFallDistSeq** to return the free falling distance at different time (in seconds, such as  \[1, 2, 3, 4, 5, 6, 7, 8, 9, 10] seconds )

#### a function freeFallDist, returns the free-fall distane at a given time

**freeFallDist** calculates the distance (in meters) an object falls due to gravity after a given time $$t$$ (in seconds).

1. Function declaration

Input: a list of time in seconds (Float)

Ouput: the free-fall distance  (Float)

2. Function definition

Calculation Formula

&#x20;$$distance = 0.5 \times g \times t ^2$$

where $$g$$ is the acceleration due to gravity and we take  $$g=9.8m/s^2$$&#x20;

Requirement Use the **let ... in** expression or **where** clause for $$g$$

#### b function **freeFallDistSeq returns a list of free fall distance**

call **map** and **freeFallDist** to convert a list of time in seconds to free-fall distances at different times.

1. Function declaration

Input : a list of Float or Floating

Output: a list of Float or Floating

2. Function definiton

Learn from the map function use case when introducing "Functions as First-class Citizens" in the lecture slides, or learn from online resources

&#x20;**map** takes a function and a list, and creates a transformed list using the function on each element of the list

{% code expandable="true" %}

```haskell
map func_name a_list
```

{% endcode %}

here, the source list is the argument of your **freeFallDistSeq** function and the function is **freeFallDist** you have defined.&#x20;

#### Testing

Use GHCi or writing a main function to test and print the results

Test Case 1

ghci

{% code expandable="true" %}

```hs
ghci> :load M2_freeFallDistSeq.hs
Ok, one module loaded.
ghci> :browse
freeFallDist :: Float -> Float
freeFallDistSeq :: [Float] -> [Float]
main :: IO ()
ghci> feeFallDistSeq [1..10]
```

{% endcode %}

main

{% code expandable="true" %}

```haskell
main :: IO()
main = do 
    print $ freeFallDistSeq [1..10]
```

{% endcode %}

Output:&#x20;

{% code expandable="true" %}

```hs
[4.9,19.6,44.100002,78.4,122.5,176.40001,240.09999,313.6,396.90002,490.0]
```

{% endcode %}