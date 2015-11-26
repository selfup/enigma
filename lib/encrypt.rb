require_relative "key"
require_relative "offset"
require_relative "encryptor"
require_relative "output"

class Encrypt
  attr_reader :offset_true, :keykey

  def intialize
    @offset_true = offset_true
    @keykey = keykey
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

  def encrypt(argument)
    Encryptor.new(@offset_true).encrypt(argument)
  end
end

handle = Encrypt.new
handle.true_offset
writer = File.open(ARGV[1], "w")
opener = File.read(ARGV[0])
writer.write(handle.encrypt(opener))
writer.close
puts Output.new.terminal_output(handle.keykey)
