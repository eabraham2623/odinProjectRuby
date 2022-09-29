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

## Stock Picker
### Assumption(s)
* List of prices is at least length of two

### Logic
* Sliding Window principle
* Leftside window starts at beginning and rightside window starts beginning + 1
* While rightside window is not at the end
   * If leftsidewindow value is less than rightsidewindow
     * Get difference, check if greater than currentMax value, if greater than currentMax, save leftside and rightside indexes
     * Increment rightsidewindow index
   * If leftsidewindow value is greater than rightsidewindow
     * Set leftside window index as current rightside window
     * Increment rightside window
   * If leftsidewindow value is same as rightsidewindow
     * Increment rightside window