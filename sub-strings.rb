def substrings(string , dictionary)
    number = string.downcase.split(' ').reduce(Hash.new(0)) do |object, word|
        dictionary.each {|element| object[element] += 1 if word.include?(element)}
        object
    end
    number
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?" , dictionary)