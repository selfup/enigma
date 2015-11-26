require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/key"

class KeyTest < Minitest::Test
  def test_key_is_an_empty_string
    sample = Key.new
    assert_equal nil, sample.key
  end

  def test_it_generates_a_key
    sample = Key.new
    sample.generator
    assert sample
  end

  def test_it_generates_a_five_character_key
    sample = Key.new
    key_test = sample.generator
    assert_equal 5, key_test.length
  end

  def test_it_generates_a_two_different_keys
    sample = Key.new
    key_test = sample.generator
    key_test2 = sample.generator
    refute_equal key_test2, key_test
  end

  def test_it_generates_three_different_keys
    sample = Key.new
    key_test = sample.generator
    key_test2 = sample.generator
    key_test3 = sample.generator
    refute_equal key_test2, key_test, key_test3
  end

  def test_it_generates_an_integer_for_a
    sample = Key.new
    sample.generator
    assert sample.upper_a.integer?
  end

  def test_it_generates_an_integer_for_b
    sample = Key.new
    sample.generator
    assert sample.upper_b.integer?
  end

  def test_it_generates_an_integer_for_c
    sample = Key.new
    sample.generator
    assert sample.upper_c.integer?
  end

  def test_it_generates_an_integer_for_d
    sample = Key.new
    sample.generator
    assert sample.upper_d.integer?
  end

  def test_it_return_a_key_is_ARGV_is_nil
    sample = Key.new
    ARGV[2] = nil
    refute_equal ARGV[2], sample.generator
  end
end
