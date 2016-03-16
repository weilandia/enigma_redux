class EncryptionKey
  attr_reader :rotation

  def initialize(key = rand.to_s[2..6])
    @rotation = rotate(key)
  end

  def rotate(key)
    a = key[0..1]
    b = key[1..2]
    c = key[2..3]
    d = key[3..4]
    [a, b, c, d].map(&:to_i)
  end
end
