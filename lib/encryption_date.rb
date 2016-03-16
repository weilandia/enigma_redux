class EncryptionDate
  attr_reader :rotation

  def initialize(date = Time.now.strftime("%-d%-m%y").to_i)
    @date = date
    @rotation = offset(date)
  end

  def offset(date)
    offset = (date ** 2).to_s[-4..-1]
    offset.chars.map(&:to_i)
  end
end
