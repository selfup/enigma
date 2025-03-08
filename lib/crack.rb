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
    Array.new(4) { |i| i + 1 }
      .map { |x| (length - x) % 4 }
      .reverse
  end

  def encrypted_character_value
    key_text.map do |x|
      characters.index(x).to_i
    end
  end

  def find_key
    Array.new(4) { |num| num }.map do |x|
      (39 - @expected[x]) + encrypted_character_value[x]
      (39 - @expected[x]) + encrypted_character_value[x]
      (39 - @expected[x]) + encrypted_character_value[x]
      (39 - @expected[x]) + encrypted_character_value[x]
    end
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
