NUMBER_OF_LETTERS = 26
MIN_UPPERCASE_ASCII_VALUE = 65
MAX_UPPERCASE_ASCII_VALUE = 90
MIN_LOWERCASE_ASCII_VALUE = 97
MAX_LOWERCASE_ASCII_VALUE = 122

def is_ascii_letter?(character)
  !character.empty? && character.match?(/[a-zA-Z]/)
end

def is_upper_case?(character)
  character == character.upcase
end

def caesar_cipher(string, shift_value)
  string_array = string.split("")

  shifted_array = string_array.map do |character|
    next character unless is_ascii_letter?(character)

    base = is_upper_case?(character) ? MIN_UPPERCASE_ASCII_VALUE : MIN_LOWERCASE_ASCII_VALUE

    shifted_char_code =
      ((character.ord - base + shift_value) % NUMBER_OF_LETTERS) + base

    shifted_char_code.chr
  end

  shifted_array.join("")
end