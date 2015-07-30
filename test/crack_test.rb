require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/crack.rb"

class CrackTest < Minitest::Test
  def test_it_accepts_an_input
    sample = Cracking.new("This is so fun.")
    assert_equal "This is so fun.", sample.input
  end

  def test_it_reads_a_file
    ARGV[0] = 'message.txt'
    sample = Cracking.new(ARGV[0])
    assert_equal "hellothere..end..\n", sample.read_file
  end

  def test_it_gives_the_length_of_the_text
    sample = Cracking.new('abcd')
    assert_equal 4, sample.length
  end

  def test_it_selects_the_last_four_characters_in_an_array
    sample = Cracking.new('abcdefg')
    assert_equal ['d', 'e', 'f', 'g'], sample.key_text
  end

  def test_it_creates_a_position_array
    sample = Cracking.new('this is cool.')
    assert_equal [1, 2, 3, 0], sample.position_array
  end

  def test_it_finds_the_value_of_encrypted_characters
    sample = Cracking.new('abcd')
    sample.key_text
    assert_equal [0, 1, 2, 3], sample.encrypted_character_value
  end

  def test_it_finds_the_key
    sample = Cracking.new('abcd')
    sample.key_text
    sample.encrypted_character_value
    assert_equal [26, 37, 4, 5], sample.find_key
  end

  def test_it_puts_the_key_in_order
    sample = Cracking.new('abcde')
    sample.key_text
    sample.encrypted_character_value
    assert_equal [27, 38, 5, 6], sample.find_key
  end

  # def test_it_decrypts_a_message
  #   sample = Cracking.new('nun.u9j4xuayk3fye')
  #   sample.key_text
  #   sample.encrypted_character_value
  #   sample.put_in_order
  #   assert_equal "hellothere..end..", sample.decrypt("nun.u9j4xuayk3fye")
  # end

end
