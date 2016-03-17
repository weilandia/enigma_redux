require 'spec_helper'

class DecryptionTest < Minitest::Test
  def test_decryption_decrypts_correctly
    assert_equal "Hello World!", Decryption.new( "X4EO4Z0R7.?j", "12345", 111111).decryption
  end
end
