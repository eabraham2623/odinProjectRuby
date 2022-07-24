# Substrings Project Problem Solving

## Inputs
* A String
* Array of strings - dictionary
  
## Output
* hash listing of matching substrings and their count against the String

## Approaches
1. using `#scan`, looping through the dictionary against the String
  1. Cheating?
  2. Returns an arry of matches, would get the count and place in hash
2. Converting String into an array of strings, split by space
   1.  For each string in dictionary, loop through array of strings, use `select` method with `include` in block
       1.  Get length of returned select to get count and construct hash
   2. PROBLEM: not great with one long string, would only get one occurrence even if there are multiple  

## PseudoCode
### Using `#scan` method
define method for returning lenght of matched scanned = `count_substrings`
instantiate empty hash = all_substrings_count

```ruby
for each word in the dictionary
    count = count_substrings(mainStr, word)

    all_substring_count[word] = count
```