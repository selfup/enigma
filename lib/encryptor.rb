class Encryptor
  attr_reader :offset

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
  end

  def rotated_a(letter)
    rotated_characters = characters.rotate(rotator_a)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_b(letter)
    rotated_characters = characters.rotate(rotator_b)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_c(letter)
    rotated_characters = characters.rotate(rotator_c)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def rotated_d(letter)
    rotated_characters = characters.rotate(rotator_d)
    pairs = characters.zip(rotated_characters)
    cipher = Hash[pairs]
    cipher[letter]
  end

  def encrypt(message)
    result = []
    updated = message.downcase.chars.each_slice(4).to_a

    updated.each_with_index do |letter, index|
      letter.each_with_index do |l, i|
        rotations = [rotated_a(l), rotated_b(l), rotated_c(l), rotated_d(l)]
        
        if l
          result << rotations[i]
        end
      end
    end
    
    result.join
  end
end
