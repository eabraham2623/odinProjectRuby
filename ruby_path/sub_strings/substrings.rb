def count_substrings(mainStr, substr)
    return mainStr.downcase.scan(substr.downcase).length
end

def add_substring_count(substr, count, hashCount)
    if count > 0
        hashCount[substr.to_sym] = count
    end
end

def substrings(mainStr, dictionary)
    hashCount = {}
    dictionary.each do |word|
        count = count_substrings(mainStr, word)
        add_substring_count(word, count, hashCount)
    end
    return hashCount
end

#### MAIN Tests

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)