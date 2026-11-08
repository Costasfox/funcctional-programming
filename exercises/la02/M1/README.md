# M1 Extract uppercase characters in a string using two methods

Write an **extract\_uppe**r function to extract all uppercase characters in a string.

Method 1: use **filter**.

Method 2: use **List comprehension**&#x20;

#### Hints

You can use isUpper from Data.Char by  `import Data.Char (isUpper)`

Alternatively, you can check if a character is in \['A'..'Z'] or compare the character directly with 'A' and 'Z'

#### Test cases

<pre class="language-haskell" data-expandable="true"><code class="lang-haskell">extract_upper "University of Derby" -- "UD"
extract_upper "Markeaton Street" -- "MS"
<strong>extract_upper "PhD Supervisor" -- "PDS"
</strong>extract_upper "123456" -- ""
extract_upper "RADAR" -- "RADAR"
</code></pre>

M2&#x20;