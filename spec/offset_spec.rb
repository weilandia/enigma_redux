require 'spec_helper'

class OffsetTest < Minitest::Test
  def test_date_and_key_offset_correctly
    assert_equal [16, 26, 36, 46], Offset.new("12345", 111111).offset
  end
end
