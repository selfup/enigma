require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "./lib/offset"

class OffsetTest < Minitest::Test
  def test_a_offset_is_an_integer
    sample = Offset.new
    thing = sample.a_offset
    assert thing.integer?
  end

  def test_a_offset_is_one_number
    sample = Offset.new
    thing = sample.a_offset
    assert_equal 1, thing.to_s.length
  end

  def test_b_offset_is_an_integer
    sample = Offset.new
    thing = sample.b_offset
    assert thing.integer?
  end

  def test_b_offset_is_one_number
    sample = Offset.new
    thing = sample.b_offset
    assert_equal 1, thing.to_s.length
  end

  def test_c_offset_is_an_integer
    sample = Offset.new
    thing = sample.c_offset
    assert thing.integer?
  end

  def test_c_offset_is_one_number
    sample = Offset.new
    thing = sample.c_offset
    assert_equal 1, thing.to_s.length
  end

  def test_d_offset_is_an_integer
    sample = Offset.new
    thing = sample.d_offset
    assert thing.integer?
  end

  def test_d_offset_is_one_number
    sample = Offset.new
    thing = sample.d_offset
    assert_equal 1, thing.to_s.length
  end

  def test_it_outputs_todays_date
    sample = Offset.new
    assert_equal Time.now.strftime('%e%m%y'), sample.date_gen
  end

  def test_it_accepts_a_given_date
    ARGV[3] = "032489"
    sample = Offset.new(ARGV[3])
    assert_equal "032489", sample.date_gen
  end

  def test_it_puts_todays_date_if_ARGV_is_nil
    !ARGV[3] = nil
    sample = Offset.new(ARGV[3])
    assert_equal Time.now.strftime('%e%m%y'), sample.date_gen
  end
end
