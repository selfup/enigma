require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require_relative "encryptor"

class EncryptorTest < Minitest::Test

  def test_it_puts_an_offset
    sample = Encryptor.new([1,2,3,4])
    assert_equal [1,2,3,4], sample.offset
  end

  def test_it_rotates_a
    sample = Encryptor.new([1,2,3,4])
    assert_equal 1, sample.rotator_a
  end

  def test_it_rotates_b
    sample = Encryptor.new([1,2,3,4])
    assert_equal 2, sample.rotator_b
  end

  def test_it_rotates_c
    sample = Encryptor.new([1,2,3,4])
    assert_equal 3, sample.rotator_c
  end

  def test_it_rotates_d
    sample = Encryptor.new([1,2,3,4])
    assert_equal 4, sample.rotator_d
  end

  def test_it_puts_all_the_characters
    sample = Encryptor.new([1,2,3,4])
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], sample.characters
  end

  def test_it_prints_rotated_letter_for_a_rotation
    sample = Encryptor.new([1,1,1,1])
    assert_equal 'b', sample.rotated_a('a')
  end

  def test_it_prints_rotated_letter_for_b_rotation
    sample = Encryptor.new([1,2,1,1])
    assert_equal 'd', sample.rotated_b('b')
  end

  def test_it_prints_rotated_letter_for_c_rotation
    sample = Encryptor.new([1,1,3,1])
    assert_equal 'f', sample.rotated_c('c')
  end

  def test_it_prints_rotated_letter_for_d_rotation
    sample = Encryptor.new([1,1,1,4])
    assert_equal 'h', sample.rotated_d('d')
  end

  def test_it_encrypts_a_message
    sample = Encryptor.new([1,2,3,4])
    assert_equal 'bdfh', sample.encrypt('abcd')
  end

  def test_it_encrypts_a_message_with_numbers
    sample = Encryptor.new([1,1,1,1])
    assert_equal '2345', sample.encrypt('1234')
  end

  # def test_it_encrypts_a_message_with_wrong_characters
  #   sample = Encryptor.new([1,1,1,1])
  #   assert_equal 'cdef', sample.encrypt('bcde%$')
  # end

end
