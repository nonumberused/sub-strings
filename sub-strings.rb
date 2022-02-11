def substrings (string, dictionary)
    lowered_string = string.downcase
    hash = {}

    dictionary.each do |word|
        hash[word] = lowered_string.scan(word).length
        hash.delete[word] if hash[word] == 0
    end
    return hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
