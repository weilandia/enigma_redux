require "translations"
class Decryption
  include Translations
  attr_reader :decryption

  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    @decryption = decrypt(message)
  end

  def decrypt(message)
    chars_translation = translate(message)
    rotated_chars = handle_offset(chars_translation, :-)
    simple_rotation = simplify_offset(rotated_chars)
    result(simple_rotation)
  end
end
