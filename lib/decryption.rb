require "translations"
class Decryption
  include Translations
  attr_reader :decryption

  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    @decryption = cryptographer(message, :-)
  end
end
