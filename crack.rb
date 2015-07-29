require "./key.rb"
require "./offset.rb"
require "./decryptor.rb"
require "./output.rb"

class Cracking

attr_reader :key, :input, :expected, :text

	def initialize(input)
		@key = []
		@offset_true = []
		@input = File.read(input)
		@expected = [13, 3, 37, 37]
    @text = text
	end

	def characters
    characters = ('a'..'z').to_a + ("0".."9").to_a + [" ", ".", ","]
  end

	def length
		@input.length
	end

	def key_text
		@text = @input[-4..-1].chars
	end

	def position_array
		@key << (length - 4) % 4
		@key << (length - 3) % 4
		@key << (length - 2) % 4
		@key << (length - 1) % 4
	end

	def encrypted_character_value
  	answer = []
  	@text.each do |x|
  		answer << characters.index(x).to_i
  	end
  	@text = answer
  end

  def find_key
   	@offset_true << (39 - @expected[0]) + @text[0]
   	@offset_true << (39 - @expected[1]) + @text[1]
   	@offset_true << (39 - @expected[2]) + @text[2]
   	@offset_true << (39 - @expected[3]) + @text[3]
  end

  def put_in_order
  	result = []
  	order = Hash[@key.zip(@offset_true)]
		result << order[0]
		result << order[1]
		result << order[2]
		result << order[3]
    result
  end

  def decrypt(argument)
    Decryptor.new(put_in_order).decrypt(argument)
  end

end
#
handle = Cracking.new(ARGV[0])
handle.key_text
handle.position_array
handle.encrypted_character_value
handle.find_key
handle.put_in_order
writer = File.open(ARGV[1], "w")
opener = File.read(ARGV[0])
writer.write(handle.decrypt(opener))
writer.close
puts Output.new.terminal_output(handle.key)
