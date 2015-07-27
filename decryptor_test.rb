require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require_relative "decryptor"

class DecryptorTest < Minitest::Test

  def test_it_puts_an_offset
    sample = Decryptor.new([1,2,3,4])
    assert_equal [1,2,3,4], sample.offset
  end

  def test_it_rotates_a
    sample = Decryptor.new([1,2,3,4])
    assert_equal 1, sample.rotator_a
  end

  def test_it_rotates_b
    sample = Decryptor.new([1,2,3,4])
    assert_equal 2, sample.rotator_b
  end

  def test_it_rotates_c
    sample = Decryptor.new([1,2,3,4])
    assert_equal 3, sample.rotator_c
  end

  def test_it_rotates_d
    sample = Decryptor.new([1,2,3,4])
    assert_equal 4, sample.rotator_d
  end

  def test_it_puts_all_the_characters
    sample = Decryptor.new([1,2,3,4])
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], sample.characters
  end

  def test_it_prints_reverse_letter_for_a_rotation
    sample = Decryptor.new([1,1,1,1])
    assert_equal 'a', sample.reverse_a('b')
  end

  def test_it_prints_reverse_letter_for_b_rotation
    sample = Decryptor.new([1,2,1,1])
    assert_equal 'b', sample.reverse_b('d')
  end

  def test_it_prints_reverse_letter_for_c_rotation
    sample = Decryptor.new([1,1,3,1])
    assert_equal 'c', sample.reverse_c('f')
  end

  def test_it_prints_reverse_letter_for_d_rotation
    sample = Decryptor.new([1,1,1,4])
    assert_equal 'd', sample.reverse_d('h')
  end

  def test_it_decrypts_a_message
    sample = Decryptor.new([1,2,3,4])
    assert_equal 'abcd', sample.decrypt('bdfh')
  end

  def test_it_decrypts_a_message_with_numbers
    sample = Decryptor.new([1,1,1,1])
    assert_equal '1234', sample.decrypt('2345')
  end

  # def test_it_decrypts_a_message_with_wrong_characters
  #   sample = Decryptor.new([1,1,1,1])
  #   assert_equal 'cdef', sample.decrypt('bcde%$')
  # end

end
