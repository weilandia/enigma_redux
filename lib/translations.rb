module Translations

  def cryptographer(message, operator)
    chars_translation = translate(message)
    rotated_chars = handle_offset(chars_translation, operator)
    simple_rotation = simplify_offset(rotated_chars)
    result(simple_rotation)
  end
  
  def translate(message)
    characters = map_characters
    message.chars.map do |letter|
      characters.index(letter)
    end
  end

  def simplify_offset(rotated_chars)
    rotated_chars.map do |char|
      char % map_characters.length
    end
  end

  def map_characters
    [*"A".."z", *"0".."9", ",", ".", "!", "?", "\"", "\'", " "]
  end

  def result(simple_rotation)
    simple_rotation.map { |char_index| map_characters[char_index] }.join
  end

  def handle_offset(translation, operator)
    translation.zip(@offset.cycle).map do |rotation|
      rotation.inject(operator)
    end
  end
end
