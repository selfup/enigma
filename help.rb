require 'pry'
require_relative 'key'

class Help

  def help_a
    binding.pry
    k = Key.new
    one = k.generator
    pry_this = one.upper_a
  end

end
