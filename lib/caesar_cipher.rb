def letters
  'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
end

def convert_to_number(string)
  string.split('').map do |char|
    if letters.include? char
      letters.index char
    else
      char
    end
  end
end

def apply_shift_factor(array, shift_factor)
  array.map do |e|
    if !e.is_a? Integer
      e
    elsif e > 25 && e + shift_factor >= 52 || e < 26 && e + shift_factor > 25
      e += shift_factor - 26
    else
      e += shift_factor
    end
  end
end

def caesar_cipher(string, shift_factor)
  apply_shift_factor(convert_to_number(string), shift_factor).map do |char|
    if !char.is_a? Integer
      char
    else
      letters[char]
    end
  end.join
end
