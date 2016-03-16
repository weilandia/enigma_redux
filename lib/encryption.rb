class Encryption
  def initialize(message, key, date)
    @offset = Offset.new(key, date).offset
    require "pry"; binding.pry
    @encryption = encrypt(message)
  end
end
