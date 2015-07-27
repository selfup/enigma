require './key.rb'

class Offset

  def date_gen
    if ARGV[3].nil?
      date = Time.now.strftime('%e%m%y')
    else
      ARGV[3]
    end
  end

  def date_masher
    date = date_gen
    date = offset_the_date(date)
    last_four(date)
  end

  def offset_the_date(date)
    date.to_i ** 2
  end

  def last_four(date)
    date.to_s[-4..-1]
  end

  def a_offset
    k = Offset.new
    a_offset = k.date_masher[0].to_i
  end

  def b_offset
    k = Offset.new
    b_offset = k.date_masher[1].to_i
  end

  def c_offset
    k = Offset.new
    a_offset = k.date_masher[2].to_i
  end

  def d_offset
    k = Offset.new
    a_offset = k.date_masher[3].to_i
  end

end
