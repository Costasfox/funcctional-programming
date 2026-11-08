# L1 Credit card number checking

The final task for this lab is to write a programme that can check a credit card number for validity (to protect from e.g. input errors). Credit card number formats are checked using an algorithm called Luhn’s algorithm, which creates a simple checksum.

Luhn’s algorithm starts at the right and doubles every 2<sup>nd</sup> number from the least significant digit (the rightmost side); if doubling gives a 2 digit number the digits are added to give a single digit (e.g. 16 would be converted to 7, for numbers ranging between 10 and 18, it is equivalent to subtract 9 from the number). You then sum all values and if the number can be divided by 10 without a remainder you have a valid credit card number.

Here is an example (note that the algorithm doesn’t say a Credit Card number needs to have a specific length):

<table data-header-hidden><thead><tr><th valign="top"></th><th width="58" valign="top"></th><th width="48" valign="top"></th><th width="52" valign="top"></th><th width="58.66668701171875" valign="top"></th><th width="66.6666259765625" valign="top"></th><th width="49.333251953125" valign="top"></th><th width="58" valign="top"></th><th width="52" valign="top"></th><th width="50.6666259765625" valign="top"></th><th width="78.00018310546875" valign="top"></th></tr></thead><tbody><tr><td valign="top">Original number</td><td valign="top">9</td><td valign="top">9</td><td valign="top">2</td><td valign="top">7</td><td valign="top">3</td><td valign="top">9</td><td valign="top">8</td><td valign="top">7</td><td valign="top">1</td><td valign="top">3</td></tr><tr><td valign="top">Double every other</td><td valign="top">18</td><td valign="top"> </td><td valign="top">4</td><td valign="top"> </td><td valign="top">6</td><td valign="top"> </td><td valign="top">16</td><td valign="top"> </td><td valign="top">2</td><td valign="top"> </td></tr><tr><td valign="top">Remove 2 digits if needed</td><td valign="top">9</td><td valign="top"> </td><td valign="top"> </td><td valign="top"> </td><td valign="top"> </td><td valign="top"> </td><td valign="top">7</td><td valign="top"> </td><td valign="top"> </td><td valign="top"> </td></tr><tr><td valign="top">Numbers to be added for final check</td><td valign="top">9</td><td valign="top">9</td><td valign="top">4</td><td valign="top">7</td><td valign="top">6</td><td valign="top">9</td><td valign="top">7</td><td valign="top">7</td><td valign="top">2</td><td valign="top">3</td></tr></tbody></table>

The sum of the numbers in the last row is 63; 63 cannot be divided by 10 without remainder so the number is invalid.

### Task

Create a programme that checks a credit card number.

Function signature

{% code expandable="true" %}

```hs
checkCCNumber :: String -> Bool 
```

{% endcode %}

It returns **True** if a number has a valid format.

#### Hints:

I am not providing you many details for this but here are some hints:&#x20;

1. You want to split the problem into several functions, like&#x20;

convert **String** (a list of digit **Char**s)  into a list of **Int**s

dealing with doubling every other number etc.&#x20;

2. To use character functions, you need to import Data.Char functions, such as&#x20;

{% code expandable="true" %}

```hs
chr, ord, isAlpha, isDigit, isUpper, isLower
```

{% endcode %}

3. You will need to list pattern matching quite a few times, such as **x:xs**, but sometimes you need more detail it could also be seen as **x:y:xs**, which hopefully helps with ‘**every other**’!
4. To find every other number from the least significant digit (the rightmost side), you may **reverse** the list first.

#### Test Cases

{% code expandable="true" %}

```hs
checkCCNumber "378282246310005" -- True
checkCCNumber "422222222222222" -- False
checkCCNumber "4012888888881881" -- True
```

{% endcode %}