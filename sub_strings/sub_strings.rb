# frozen_string_literal: true

def substrings(input_string, dictionary)
  input_string_array = input_string.split.map(&:downcase)

  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, hash|
    input_string_array.each do |input_word|
      hash[dictionary_word] += 1 if input_word.include?(dictionary_word)
    end
  end
end
