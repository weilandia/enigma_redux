require 'spec_helper'

class EncryptionKeyTest < Minitest::Test
  def test_key_has_four_rotations
    assert_equal 4, EncryptionKey.new.rotation.length
  end

  def test_key_rotates_correctly
    key = EncryptionKey.new("12345")
    assert_equal [12, 23, 34, 45], key.rotation
  end
end
