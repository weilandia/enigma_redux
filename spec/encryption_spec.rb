require 'spec_helper'

class EncryptionTest < Minitest::Test
  def test_encryption_encrypts_four_letters_correctly
    assert_equal "hey", Encryption.new("abcd", "12345", 111111).encryption
  end
end
