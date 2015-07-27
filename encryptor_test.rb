require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require_relative "encryptor"

class EncrytorTest < Minitest::Test

  def test_it_puts_an_offset
    sample = Encryptor.new('11111')
    assert_equal '11111', sample.offset
  end

end
