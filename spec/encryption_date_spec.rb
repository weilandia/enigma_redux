require 'spec_helper'

class EncryptionDateTest < Minitest::Test
  def test_date_offsets_correctly
    assert_equal [9, 2, 2, 5], EncryptionDate.new(20315).date_offset
  end
end
