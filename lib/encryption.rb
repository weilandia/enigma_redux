require "translations"
class Encryption
  include Translations
  attr_reader :encryption

  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    @encryption = cryptographer(message, :+)
  end
end
