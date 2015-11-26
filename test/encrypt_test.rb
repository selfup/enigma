require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/encrypt.rb"

class DecriptTest < Minitest::Test
  def test_it_changes_the_key
    sample = Encrypt.new
    refute_equal [83, 25, 35, 40], sample.true_offset
  end

  def test_it_makes_new_message
    sample = Encrypt.new
    sample.true_offset
    refute_equal "us8ziuuf1.9", sample.encrypt(ARGV[0])
  end
end
