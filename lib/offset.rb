class Offset
  attr_reader :offset

  def initialize(key, date)
    @key = EncryptionKey.new(key)
    @date = EncryptionDate.new(date)
    @offset = create_offset(@key.rotation, @date.rotation)
  end

  def create_offset(key, date)
    key.zip(date).map { |offset| offset.inject(:+) }
  end
end
