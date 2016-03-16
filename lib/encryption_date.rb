class EncryptionDate
  attr_reader :date_offset

  def initialize(date = Time.now.strftime("%-d%-m%y").to_i)
    @date_offset = offset(date)
  end

  def offset(date)
    offset = (date ** 2).to_s[-4..-1]
    offset.chars.map(&:to_i)
  end
end
