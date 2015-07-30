class Decryptor
  attr_accessor :offset

  def initialize(offset)
    @offset = offset
  end

  def rotator_a
    @offset[0].to_i
  end

  def rotator_b
    @offset[1].to_i
  end

  def rotator_c
    @offset[2].to_i
  end

  def rotator_d
    @offset[3].to_i
  end

  def characters
    characters = ('a'..'z').to_a + ("0".."9").to_a + (" .,").split("")
    # clean_text = characters.gsub!(/[^0-9A-Za-z., ]/, '')
  end

  def reverse_a(letter)
    rotated_characters = characters.rotate(-rotator_a)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def reverse_b(letter)
    rotated_characters = characters.rotate(-rotator_b)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def reverse_c(letter)
    rotated_characters = characters.rotate(-rotator_c)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def reverse_d(letter)
    rotated_characters = characters.rotate(-rotator_d)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def decrypt(message)
    result = []
    updated = message.downcase.chars.each_slice(4).to_a

    updated.each_with_index do |letter, index|
      if letter[0]
        result << reverse_a(letter[0])
      end
      if letter[1]
        result << reverse_b(letter[1])
      end
      if letter[2]
        result << reverse_c(letter[2])
      end
      if letter[3]
        result << reverse_d(letter[3])
      end
    end
    result.join
  end

end
