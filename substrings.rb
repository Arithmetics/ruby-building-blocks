dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(str, dict)
  word_counts = {}
  dict.each do |word|
    word_counts[word] = str.downcase.scan(word).length
  end
  word_counts.select {|key,value| value > 0}
end
