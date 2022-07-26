# Stock Picker Problem Solving

## Maximum sub array

1. Get initial sum of of first `k` elements
2. Set maximum as initial sum
3. for loop until and including arr.length - k, starting at first index
   1. decrement current sum with element at current index
   2. increment current sum with element at current + k
   3. Check if current is greater than current maximum
      1. Set if maximum as current sum
4. 