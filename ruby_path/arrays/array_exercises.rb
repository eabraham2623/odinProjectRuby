def checkNumberExists(arr, num)
    return arr.include?(num)
end

puts checkNumberExists([3,53], 3)
puts checkNumberExists([3,53], 5)

arr = [["test", "hello", "world"],["example", "mem"]]
arr2 = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr2.index(5)
puts arr2[5]