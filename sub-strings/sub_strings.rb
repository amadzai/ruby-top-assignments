def substrings(input_string, dictionary)
  input_string_array = input_string.split(" ").map(&:downcase)

  return dictionary.reduce(Hash.new(0)) do |hash, dictionary_word|
    
    input_string_array.each do |input_word|
      if (input_word.include?(dictionary_word))
        hash[dictionary_word] += 1
      end
    end

    hash
  end
end