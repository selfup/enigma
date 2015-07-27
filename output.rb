require "./offset.rb"

class Output

  def input_line_read
    input_line_array = []
    File.foreach(ARGV[0]).map.with_index do |line, line_num|
       input_line_array << line_num
    end
    input_line_array
  end

  def output_line_read
    output_line_array = []
    File.foreach(ARGV[1]).map.with_index do |line, line_num|
       output_line_array << line_num
    end
    output_line_array
  end

  def date_for_output
    Offset.new.date_gen
  end

  def terminal_output(keykey)
    "Created #{ARGV[1]} with the key #{keykey} and the date #{date_for_output}"
  end

end
