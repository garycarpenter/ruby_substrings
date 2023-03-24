#substrings.rb

def substrings(string, dictionary)
  string = string.downcase
  dictionary.reduce(Hash.new(0)) do |hash, word|
    hash[word] += 1 if string.include?(word)
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
