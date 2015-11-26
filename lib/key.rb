class Key
  attr_reader :key

  def initialize(key = nil)
    @key = key
  end

  def generator
    if ARGV[2].nil?
      @key = 5.times.map { rand (0..9) }.join
    else
      ARGV[2]
    end
  end

  def upper_a
    @key[0..1].to_i
  end

  def upper_b
    @key[1..2].to_i
  end

  def upper_c
    @key[2..3].to_i
  end

  def upper_d
    @key[3..4].to_i
  end
end
