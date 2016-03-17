require "translations"
class Encryption
  include Translations
  attr_reader :encryption

  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    @encryption = encrypt(message)
  end

  def encrypt(message)
    chars_translation = translate(message)
    rotated_chars = handle_offset(chars_translation, :+)
    simple_rotation = simplify_offset(rotated_chars)
    result(simple_rotation)
  end
end
