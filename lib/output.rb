require_relative "offset"

class Output
  def date_for_output
    Offset.new.date_gen
  end

  def terminal_output(keykey)
    "Created #{ARGV[1]} with the key #{keykey} and the date #{date_for_output}"
  end

  def crack_output
    "Created #{ARGV[1]}"
  end
end
