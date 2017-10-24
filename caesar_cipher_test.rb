require "minitest/autorun"
require_relative "caesar_cipher"


class CaesarTest < Minitest::Test

  def test_convert_a_to_b
    assert caesar_cipher("a", 1) == "b"
  end

  def test_convert_z_to_a
    assert caesar_cipher("z", 1) == "a"
  end

  def test_should_not_convert_specials
    assert caesar_cipher("+*/-$%^", 1) == "+*/-$%^"
  end

  def test_convert_around
    assert caesar_cipher("aabbzz", 26) == "aabbzz"
  end

  def test_should_not_convert_numbers
    assert caesar_cipher("12345", 1) == "12345"
  end

end
