require "./key.rb"
require "./offset.rb"
require "./encryptor.rb"

class Runner

  attr_reader :offset_true

  def intialize
    @offset_true = offset_true
  end

  def true_offset
    offset = []
    k2 = Key.new
    k2.generator
    o1 = Offset.new
    offset << o1.a_offset + k2.upper_a
    offset << o1.b_offset + k2.upper_b
    offset << o1.c_offset + k2.upper_c
    offset << o1.d_offset + k2.upper_d
    @offset_true = offset
  end

  def rotator(argument)
    Encryptor.new(@offset_true).encrypt(argument)
  end
end

k = Runner.new
p k.true_offset
p k.rotator("hello JAJAJA")
