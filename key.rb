require 'pry'  # => true

class Key

  attr_accessor :key  # => nil

  def intialize
    @key = key
  end

  def generator
    @key = 5.times.map { rand (0..9) }.join  # => "77376"
  end

  def upper_a
    @key[0..1].to_i  # => 77
  end

  def upper_b
    @key[1..2].to_i  # => 73
  end

  def upper_c
    @key[2..3].to_i  # => 37
  end

  def upper_d
    @key[3..4].to_i  # => 76
  end

end

# k = Key.new    # => #<Key:0x007fa143047c20>
# p k.generator  # => "77376"
# p k.upper_a    # => 77
# p k.upper_b    # => 73
# p k.upper_c    # => 37
# p k.upper_d    # => 76


# >> "77376"
# >> 77
# >> 73
# >> 37
# >> 76
