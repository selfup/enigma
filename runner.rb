require "./key.rb"
require "./offset.rb"
require "./encryptor.rb"
require "./output.rb"

class Runner

  attr_reader :offset_true
  attr_accessor :keykey

  def intialize
    @offset_true = offset_true
    @keykey = ''
  end

  def input
    File.read(file)
  end

  def true_offset
    offset = []
    k2 = Key.new
    @keykey = k2.generator
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

# k = Runner.new
# p k.true_offset # comment this out to remove offset from output instead of key
# p k.rotator("hello JAJAJA")

handle = Runner.new
handle.true_offset
writer = File.open(ARGV[1], "w")
writer.write(handle.rotator(ARGV[0]))
writer.close
puts Output.new.terminal_output(handle.keykey)
