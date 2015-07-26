require "./key.rb"
require "./offset.rb"
require "./rotator.rb"

class Runner

  attr_reader :offset_true

  def intialize
    @offset_true = offset_true
  end

  def a_offset
    k = Offset.new
    a_offset = k.date_gen[0].to_i
  end

  def b_offset
    k = Offset.new
    b_offset = k.date_gen[1].to_i
  end

  def c_offset
    k = Offset.new
    c_offset = k.date_gen[2].to_i
  end

  def d_offset
    k = Offset.new
    d_offset = k.date_gen[3].to_i
  end

  def true_offset
    offset = []
    k2 = Key.new
    k2.generator
    offset << a_offset + k2.upper_a
    offset << b_offset + k2.upper_b
    offset << c_offset + k2.upper_c
    offset << d_offset + k2.upper_d
    @offset_true = offset
  end

  def rotator
    Rotator.new(@offset_true)
  end

end

k = Runner.new
p k.true_offset
p k.rotator
