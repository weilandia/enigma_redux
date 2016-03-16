require 'spec_helper'

class OffsetTest < Minitest::Test
  def test_date_and_key_offset_correctly
    key = EncryptionKey.new("12345")
    date = EncryptionDate.new(111111)
    assert_equal [16, 26, 36, 46], Offset.new(key, date)
  end
end
