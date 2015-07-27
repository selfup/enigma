class Encryptor
  attr_accessor :offset

  def initialize(offset)
    @offset = offset
  end

  def rotator_a(a = @offset)
    a[0]
  end

  def rotator_b(b = @offset)
    b[1]
  end

  def rotator_c(c = @offset)
    c[2]
  end

  def rotator_d(d = @offset)
    d[3]
  end

  def characters
    characters = ('a'..'z').to_a + ("0".."9").to_a + (" .,").split("")
    # clean_text = characters.gsub!(/[^0-9A-Za-z., ]/, '')
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
