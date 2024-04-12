dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def substrings(string, dict)

  # create a Hash
  sub_count = Hash.new(0)

  # Downacase (or UPCASE?)
  string = string.downcase

  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  dictionary.each do |item|
    if string.include?(item)
      count = string.scan(item).length

      # add count to sub_count  
      sub_count[item] += count
    end
    
  end

  if sub_count.empty?
    p "No matches"
  end
  p sub_count 

end

substrings("howdy partner how about you sit down below and go on your own", dictionary) 
