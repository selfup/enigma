require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require_relative "crack"

class CrackTest < Minitest::Test
  def test_it_accepts_an_input
    sample = Cracking.new("This is so fun.")
    assert_equal "This is so fun.", sample.input
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


end
