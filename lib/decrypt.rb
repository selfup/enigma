require_relative "key"
require_relative "offset"
require_relative "decryptor"
require_relative "output"

class Decrypt
  attr_reader :offsets, :key

  def intialize
    @key = Key.new(ARGV[2]).generator
        
    @offsets = Offset.new(ARGV[3]).offsets
  end

  def decrypt(argument)
    Decryptor.new(@offsets).decrypt(argument)
  end
end

if __FILE == $0
  handle = Decrypt.new

  writer = File.open(ARGV[1], "w")
  opener = File.read(ARGV[0])

  writer.write(handle.decrypt(opener))
  writer.close

  puts Output.new.terminal_output(handle.key)
end
