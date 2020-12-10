def substrings(input_string, dictionary_array)
  string_array = input_string.downcase.split
  results = {}
  dictionary_array.each do |dictionary_word|
    string_array.each do |input_word|
      unless input_word.include? dictionary_word
        next
      else
        unless results.include? dictionary_word
          results[dictionary_word] = 1
        else
          results[dictionary_word] += 1
        end
      end
    end
  end
  return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Input your string below: "
input = gets
puts substrings(input, dictionary)