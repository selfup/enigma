class Offset

  def initialize(date = nil)
    @date = date
  end

  def date_gen
    if @date.nil?
      Time.now.strftime('%e%m%y')
    else
      @date
    end
  end

  def date_masher
    last_four(offset_the_date(date_gen))
  end

  def offset_the_date(date)
    date.to_i ** 2
  end

  def last_four(date)
    date.to_s[-4..-1]
  end

  def a_offset
    date_masher[0].to_i
  end

  def b_offset
    date_masher[1].to_i
  end

  def c_offset
    date_masher[2].to_i
  end

  def d_offset
    date_masher[3].to_i
  end

end
