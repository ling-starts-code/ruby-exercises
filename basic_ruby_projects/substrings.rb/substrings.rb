def substring(string, array)
  matches = {}
  array.each do |word|
    matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
  end
  matches
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substring("Below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)
