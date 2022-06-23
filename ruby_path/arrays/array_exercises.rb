def checkNumberExists(arr, num)
    return arr.include?(num)
end

puts checkNumberExists([3,53], 3)
puts checkNumberExists([3,53], 5)