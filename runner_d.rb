require "./key.rb"
require "./offset.rb"
require "./decryptor.rb"
require "./output.rb"

class Runner

  attr_reader :offset_true
  attr_accessor :keykey

  def intialize
    @offset_true = offset_true
    @keykey = keykey
  end

  def input
    File.read(file)
  end

  def true_offset
    offset = []
    k2 = Key.new(ARGV[2])
    @keykey = k2.generator
    o1 = Offset.new(ARGV[3])
    offset << o1.a_offset + k2.upper_a
    offset << o1.b_offset + k2.upper_b
    offset << o1.c_offset + k2.upper_c
    offset << o1.d_offset + k2.upper_d
    @offset_true = offset
  end

  def decrypt(argument)
    Decryptor.new(@offset_true).decrypt(argument)
  end

end

handle = Runner.new
handle.true_offset
writer = File.open(ARGV[1], "w")
opener = File.read(ARGV[0])
writer.write(handle.decrypt(opener))
writer.close
puts Output.new.terminal_output(handle.keykey)
