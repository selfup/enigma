class Decryptor

  def initialize(offset)
    @offset = offset
  end

  def rotator_a(thing = @offset)
    thing[0]
  end

  def rotator_b(thing = @offset)
    thing[1]
  end

  def rotator_c(thing = @offset)
    thing[2]
  end

  def rotator_d(thing = @offset)
    thing[3]
  end

  def characters
    characters = ('a'..'z').to_a + ("0".."9").to_a + (" .,").split("")
  end

  def rotated_a(letter)
    rotated_characters = characters.rotate(-rotator_a)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_b(letter)
    rotated_characters = characters.rotate(-rotator_b)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_c(letter)
    rotated_characters = characters.rotate(-rotator_c)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_d(letter)
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
        result << rotated_a(letter[0])
      end
      if letter[1]
        result << rotated_b(letter[1])
      end
      if letter[2]
        result << rotated_c(letter[2])
      end
      if letter[3]
        result << rotated_d(letter[3])
      end
    end
    result.join
  end

end
