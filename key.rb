require 'pry'

class Key

  attr_accessor :key

  def intialize
    @key = key
  end

  def generator
    @key = 5.times.map { rand (0..9) }.join
  end

  def upper_a
    @key[0..1].to_i
  end

  def upper_b
    @key[1..2].to_i
  end

  def upper_c
    @key[2..3].to_i
  end

  def upper_d
    @key[3..4].to_i
  end

end
