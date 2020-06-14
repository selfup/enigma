require_relative "key"
require_relative "offset"
require_relative "decryptor"
require_relative "output"

class Cracking
	attr_reader :input, :expected

  def initialize(input)
    if File.file?(input)
      @input = File.read(input)
    else
      @input = input
    end
    
    @expected = [13, 3, 37, 37]
  end

  def characters
    ('a'..'z').to_a + ("0".."9").to_a + [" ", ".", ","]
  end

  def length
    @input.length
  end

  def key_text
    @input[-4..-1].chars
  end

  def position_array
    key = []
    key << (length - 4) % 4
    key << (length - 3) % 4
    key << (length - 2) % 4
    key << (length - 1) % 4
  end

  def encrypted_character_value
    answer = []
    key_text.each do |x|
      answer << characters.index(x).to_i
    end
    answer
  end

  def find_key
    offset_true = []
    offset_true << (39 - @expected[0]) + encrypted_character_value[0]
    offset_true << (39 - @expected[1]) + encrypted_character_value[1]
    offset_true << (39 - @expected[2]) + encrypted_character_value[2]
    offset_true << (39 - @expected[3]) + encrypted_character_value[3]
  end

  def put_in_order
    order = Hash[position_array.zip(find_key)]
    order.map.with_index do |x, index|
      order[index]
    end
  end

  def decrypt(argument)
    Decryptor.new(put_in_order).decrypt(argument)
  end
end

if __FILE__ == $0
  handle = Cracking.new(ARGV[0])
  handle.put_in_order
  
  writer = File.open(ARGV[1], "w")
  opener = File.read(ARGV[0])
  
  writer.write(handle.decrypt(opener))
  writer.close
  
  puts Output.new.crack_output
end
