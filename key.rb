require 'pry'

class Key

  def generator
    if ARGV[2].nil?
      5.times.map { rand (0..9) }.join
    else
      ARGV[2]
    end
  end

  def upper_a
    generator[0..1].to_i
  end

  def upper_b
    generator[1..2].to_i
  end

  def upper_c
    generator[2..3].to_i
  end

  def upper_d
    generator[3..4].to_i
  end

end
