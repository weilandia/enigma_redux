class Encryption
  attr_reader :encryption
  
  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    @encryption = encrypt(message)
  end

  def encrypt(message)
    chars_translation = translate(message)
    rotated_chars = add_offset(chars_translation)
    simple_rotation = simplify_offset(rotated_chars)
    encrypted(simple_rotation)
  end

  def translate(message)
    characters = map_characters
    message.chars.map do |letter|
      characters.index(letter)
    end
  end

  def add_offset(translation)
    translation.zip(@offset.cycle).map do |rotation|
      rotation.inject(:+)
    end
  end

  def simplify_offset(rotated_chars)
    rotated_chars.map do |char|
      char % map_characters.length
    end
  end

  def encrypted(simple_rotation)
    simple_rotation.map { |char_index| map_characters[char_index] }.join
  end

  def map_characters
    [*"A".."z", *"0".."9", ",", ".", "!", "?", "\"", "\'", " "]
  end
end
