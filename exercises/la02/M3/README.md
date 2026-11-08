# M3 Type-Safe BMI Calculator

In this exercise, you will build a type-safe Body Mass Index (BMI) calculator using custom enumerations, guards, and tuples in Haskell.

### **Task Requirements:**

1. Define an Enumeration (ADT):

   Create a custom data type named `BMILevel` with the following constructors:

   * `Underweight`
   * `Normal`
   * `Overweight`
   * `Obese`
   * *Hint:* Don't forget to derive `Show` and `Eq` for your data type.
2. Implement the Evaluation Function:

   Write a function named `evaluateBMI` with the following type signature:

   Haskell

   ```hs
   evaluateBMI :: Float -> Float -> (Float, BMILevel)
   ```

   * The function takes two parameters: weight (in kilograms) and height (in meters).
   * You can assume valid inputs where `height > 0`.
3. Calculation and Categorization:
   * Compute the BMI using the formula: $$\frac{\text{weight}}{\text{height}^2}$$ (hint: use a `where` clause to keep your code clean).
   * Use guards to map the calculated BMI to the correct `BMILevel` based on standard thresholds:
     * Less than $$18.5$$ $$\rightarrow$$ `Underweight`
     * $$18.5$$ to less than $$25.0$$ $$\rightarrow$$ `Normal`
     * $$25.0$$ to less than $$30.0$$ $$\rightarrow$$ `Overweight`
     * $$30.0$$ and above $$\rightarrow$$ `Obese`
4. Return Value:

   Return a tuple containing the raw calculated `Float` value as the first element and the `BMILevel` enumeration constructor as the second element.

#### Test cases

{% code expandable="true" %}

```hs
evaluateBMI 70.0 1.75 -- (22.857143,Normal)
evaluateBMI 85.0 1.75 -- (27.755102,Overweight)
evaluateBMI 100.0 1.7 -- (34.602074,Obese)
evaluateBMI 53.0 1.7 -- (18.3391,Underweight)
```

{% endcode %}
