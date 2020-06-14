require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/crack.rb"

class CrackTest < Minitest::Test
  def test_it_accepts_an_input
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal "hcvqorrjrcidelnd.", sample.input
  end

  def test_it_gives_the_length_of_the_text
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal 17, sample.length
  end

  def test_it_selects_the_last_four_characters_in_an_array
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal ["l", "n", "d", "."], sample.key_text
  end

  def test_it_creates_a_position_array
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal [1, 2, 3, 0], sample.position_array
  end

  def test_it_finds_the_value_of_encrypted_characters
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal [11, 13, 3, 37], sample.encrypted_character_value
  end

  def test_it_finds_the_key
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal [37, 49, 5, 39], sample.find_key
  end

  def test_it_puts_the_key_in_order
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    assert_equal [39, 37, 49, 5], sample.put_in_order
  end

  def test_it_decrypts_a_message
    sample = Cracking.new(ARGV[0] || "hcvqorrjrcidelnd.")
    sample.put_in_order

    something = ""

    if ARGV[1]
      something = File.read(ARGV[1])
    else
      something = "hellothere..end.."
    end
    assert_equal something, sample.decrypt("hcvqorrjrcidelnd.")
  end
end
