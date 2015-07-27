require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require_relative "runner"

class RunnerTest < Minitest::Test

  def test_runner_method_does_the_same_job_as_key_class_for_generate_method
    skip
    sample = Runner.new
    key_test = sample.generator
    key_test2 = sample.generator
    key_test3 = sample.generator
    refute_equal key_test2, key_test, key_test3
  end

  def test_a_offset_is_an_integer
    sample = Runner.new
    thing = sample.a_offset
    assert thing.integer?
  end

  def test_a_offset_is_one_number
    sample = Runner.new
    thing = sample.a_offset
    assert_equal 1, thing.to_s.length
  end

  def test_b_offset_is_an_integer
    sample = Runner.new
    thing = sample.b_offset
    assert thing.integer?
  end

  def test_b_offset_is_one_number
    sample = Runner.new
    thing = sample.b_offset
    assert_equal 1, thing.to_s.length
  end

  def test_c_offset_is_an_integer
    sample = Runner.new
    thing = sample.c_offset
    assert thing.integer?
  end

  def test_c_offset_is_one_number
    sample = Runner.new
    thing = sample.c_offset
    assert_equal 1, thing.to_s.length
  end

  def test_d_offset_is_an_integer
    sample = Runner.new
    thing = sample.d_offset
    assert thing.integer?
  end

  def test_d_offset_is_one_number
    sample = Runner.new
    thing = sample.d_offset
    assert_equal 1, thing.to_s.length
  end

end
