# Bubble Sort
## General Algorithm
* Given an array, for each element, compare the element to the right of the current and swap them if the left element is greater than the right element. 
* Repeat whole process again until no swaps have been made
* Optimizing algorith, can ignore the lasted sorted element, since we know it is already the biggest

## PseudoCode
```psuedo
Until `sorted` is true:
    if index != lastUnsortedIndex
        if arr[index] > arr[index+1]
            temp = arr[index+1]
            arr[index+1] = arr[index]
            arr[index] = temp
            index = index + 1
            swapped = true
        else
            index = index + 1
    else
        if swapped == false
            sorted = true
        else
            lastUnsortedIndex = index - 1
            index = 0
            swapped = false
```