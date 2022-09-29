# Caesar Cipher Problem Solving

## Constraints
* Only shifting letters
* Keeping same case
* Wrapping letters
* spaces retained
* special characters ignored

## Approach - Using ASCII Values, shifting them, and convert back to letters
1. Convert letter characters in string to ASCII values
2. Shift the ASCII values (remember to wrap)
3. Convert the ASCII values back to string/characters

## Problem 1 - Converting Letter Characters to ASCII - given a string
* Using `each_byte` to convert characters in string to ASCII
    * 65 - 90, Uppercase letters
    * 97 - 122, lowercase letters
    * 32, space
    * Everything else to not be modified
### Problem 2 - Shifting ASCII values
* check if ascii values are in ranges `byte.between(65, 90)`, `byte.between(97, 122)`
  * shift value is moduloed by 26 = `true_shift`
  * add `true_shift` to ascii
  * if lowercase, check if shifted is greater 90, subtract by 26 if it is
  * if uppercase, check if shifted is greater than 97, subtract by 26 if it is
* If not in range keep original ascii
  

### Problem 3 - Converting ASCII values back to character
* Using map, do .chr method

## Example
* Inputs
  * `Zorro kills!`, 5
* Expected
  * `Etwwt pnqqx!`