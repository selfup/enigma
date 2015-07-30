require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/decrypt.rb"

class DecriptTest < Minitest::Test

  def test_it_finds_the_true_offset
    sample = Decrypt.new
    assert_equal [58, 80, 83, 16], sample.true_offset
  end

  def test_it_decrypts
    sample = Decrypt.new
    sample.true_offset
    assert_equal "yl bfno1x9oha", sample.decrypt(ARGV[0])
  end

end
