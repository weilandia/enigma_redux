require 'spec_helper'

class EncryptionTest < Minitest::Test
  def test_encryption_encrypts_four_letters_correctly
    assert_equal "X4EO4Z0R7.?j", Encryption.new("Hello World!", "12345", 111111).encryption
  end
end
