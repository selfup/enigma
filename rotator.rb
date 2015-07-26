class Rotator

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
    characters = (' '..'z').to_a
  end

  def rotated_a
    rotated_characters = characters.rotate(rotator_a)
    pairs = characters.zip(rotated_characters)
    Hash[pairs]
  end

  def rotated_b
    rotated_characters = characters.rotate(rotator_b)
    pairs = characters.zip(rotated_characters)
    Hash[pairs]
  end

  def rotated_c
    rotated_characters = characters.rotate(rotator_c)
    pairs = characters.zip(rotated_characters)
    Hash[pairs]
  end

  def rotated_d
    rotated_characters = characters.rotate(rotator_d)
    pairs = characters.zip(rotated_characters)
    Hash[pairs]
  end

end

# k = Rotator.new([42, 24, 49, 92])
# p k.rotator_a
# p k.rotator_b
# p k.rotator_c
# p k.rotator_d
# p k.rotated_a
# p k.rotated_b
# p k.rotated_c
# p k.rotated_d
