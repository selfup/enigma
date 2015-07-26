class Rotator

  OFFSET = [42, 24, 49, 92]  # => [42, 24, 49, 92]

  def rotator_a(thing = OFFSET)
    thing[0]                     # => 42, 42, 42, 42, 42
  end

  def rotator_b(thing = OFFSET)
    thing[1]                     # => 24
  end

  def rotator_c(thing = OFFSET)
    thing[2]                     # => 49
  end

  def rotator_d(thing = OFFSET)
    thing[3]                     # => 92
  end

  def characters
    characters = (' '..'z').to_a  # => [" ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], [" ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], [" ", "!", "\"", "#", "$", "%", "&", "'"...
  end

  def rotated_a
    rotated_characters = characters.rotate(rotator_a)  # => ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I"]
    pairs = characters.zip(rotated_characters)         # => [[" ", "J"], ["!", "K"], ["\"", "L"], ["#", "M"], ["$", "N"], ["%", "O"], ["&", "P"], ["'", "Q"], ["(", "R"], [")", "S"], ["*", "T"], ["+", "U"], [",", "V"], ["-", "W"], [".", "X"], ["/", "Y"], ["0", "Z"], ["1", "["], ["2", "\\"], ["3", "]"], ["4", "^"], ["5", "_"], ["6", "`"], ["7", "a"], ["8", "b"], ["9", "c"], [":", "d"], [";", "e"], ["<", "f"], ["=", "g"], [">", "h"], ["?", "i"], ["@", "j"], ["A", "k"], ["B", "l"], ["C", "m"], ["D", "n"], ["E", "o"], ["F", "p"], ["G", "q"], ["H", "r"], ["I", "s"], ["J", "t"], ["K", "u"], ["L", "v"], ["M", "w"], ["N", "x"], ["O", "y"], ["P", "z"], ["Q", " "], ["R", "!"], ["S", "\""], ["T", "#"], ["U", "$"], ["V", "%"], ["W", "&"], ["X", "'"], ["Y", "("], ["Z", ")"], ["[", "*"], ["\\", "+"], ["]", ","], ["^", "-"], ["_", "."], ["`", "/"], ["a", "0"], ["b", "1"], ["c", "2"], ["d", "3"], ["e", "4"], ["f", "5"], ["g", "6"], ["h", "7"], ["i", "8"], ["j", "9"], ["k", ":"], ["l", ";"], ["m", "<...
    Hash[pairs]                                        # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
  end

  def rotated_b
    rotated_characters = characters.rotate(rotator_b)  # => ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I"]
    pairs = characters.zip(rotated_characters)         # => [[" ", "J"], ["!", "K"], ["\"", "L"], ["#", "M"], ["$", "N"], ["%", "O"], ["&", "P"], ["'", "Q"], ["(", "R"], [")", "S"], ["*", "T"], ["+", "U"], [",", "V"], ["-", "W"], [".", "X"], ["/", "Y"], ["0", "Z"], ["1", "["], ["2", "\\"], ["3", "]"], ["4", "^"], ["5", "_"], ["6", "`"], ["7", "a"], ["8", "b"], ["9", "c"], [":", "d"], [";", "e"], ["<", "f"], ["=", "g"], [">", "h"], ["?", "i"], ["@", "j"], ["A", "k"], ["B", "l"], ["C", "m"], ["D", "n"], ["E", "o"], ["F", "p"], ["G", "q"], ["H", "r"], ["I", "s"], ["J", "t"], ["K", "u"], ["L", "v"], ["M", "w"], ["N", "x"], ["O", "y"], ["P", "z"], ["Q", " "], ["R", "!"], ["S", "\""], ["T", "#"], ["U", "$"], ["V", "%"], ["W", "&"], ["X", "'"], ["Y", "("], ["Z", ")"], ["[", "*"], ["\\", "+"], ["]", ","], ["^", "-"], ["_", "."], ["`", "/"], ["a", "0"], ["b", "1"], ["c", "2"], ["d", "3"], ["e", "4"], ["f", "5"], ["g", "6"], ["h", "7"], ["i", "8"], ["j", "9"], ["k", ":"], ["l", ";"], ["m", "<...
    Hash[pairs]                                        # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
  end

  def rotated_c
    rotated_characters = characters.rotate(rotator_c)  # => ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I"]
    pairs = characters.zip(rotated_characters)         # => [[" ", "J"], ["!", "K"], ["\"", "L"], ["#", "M"], ["$", "N"], ["%", "O"], ["&", "P"], ["'", "Q"], ["(", "R"], [")", "S"], ["*", "T"], ["+", "U"], [",", "V"], ["-", "W"], [".", "X"], ["/", "Y"], ["0", "Z"], ["1", "["], ["2", "\\"], ["3", "]"], ["4", "^"], ["5", "_"], ["6", "`"], ["7", "a"], ["8", "b"], ["9", "c"], [":", "d"], [";", "e"], ["<", "f"], ["=", "g"], [">", "h"], ["?", "i"], ["@", "j"], ["A", "k"], ["B", "l"], ["C", "m"], ["D", "n"], ["E", "o"], ["F", "p"], ["G", "q"], ["H", "r"], ["I", "s"], ["J", "t"], ["K", "u"], ["L", "v"], ["M", "w"], ["N", "x"], ["O", "y"], ["P", "z"], ["Q", " "], ["R", "!"], ["S", "\""], ["T", "#"], ["U", "$"], ["V", "%"], ["W", "&"], ["X", "'"], ["Y", "("], ["Z", ")"], ["[", "*"], ["\\", "+"], ["]", ","], ["^", "-"], ["_", "."], ["`", "/"], ["a", "0"], ["b", "1"], ["c", "2"], ["d", "3"], ["e", "4"], ["f", "5"], ["g", "6"], ["h", "7"], ["i", "8"], ["j", "9"], ["k", ":"], ["l", ";"], ["m", "<...
    Hash[pairs]                                        # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
  end

  def rotated_d
    rotated_characters = characters.rotate(rotator_d)  # => ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I"]
    pairs = characters.zip(rotated_characters)         # => [[" ", "J"], ["!", "K"], ["\"", "L"], ["#", "M"], ["$", "N"], ["%", "O"], ["&", "P"], ["'", "Q"], ["(", "R"], [")", "S"], ["*", "T"], ["+", "U"], [",", "V"], ["-", "W"], [".", "X"], ["/", "Y"], ["0", "Z"], ["1", "["], ["2", "\\"], ["3", "]"], ["4", "^"], ["5", "_"], ["6", "`"], ["7", "a"], ["8", "b"], ["9", "c"], [":", "d"], [";", "e"], ["<", "f"], ["=", "g"], [">", "h"], ["?", "i"], ["@", "j"], ["A", "k"], ["B", "l"], ["C", "m"], ["D", "n"], ["E", "o"], ["F", "p"], ["G", "q"], ["H", "r"], ["I", "s"], ["J", "t"], ["K", "u"], ["L", "v"], ["M", "w"], ["N", "x"], ["O", "y"], ["P", "z"], ["Q", " "], ["R", "!"], ["S", "\""], ["T", "#"], ["U", "$"], ["V", "%"], ["W", "&"], ["X", "'"], ["Y", "("], ["Z", ")"], ["[", "*"], ["\\", "+"], ["]", ","], ["^", "-"], ["_", "."], ["`", "/"], ["a", "0"], ["b", "1"], ["c", "2"], ["d", "3"], ["e", "4"], ["f", "5"], ["g", "6"], ["h", "7"], ["i", "8"], ["j", "9"], ["k", ":"], ["l", ";"], ["m", "<...
    Hash[pairs]                                        # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
  end

end

k = Rotator.new  # => #<Rotator:0x007f97010ef2c8>
p k.rotator_a    # => 42
p k.rotator_b    # => 24
p k.rotator_c    # => 49
p k.rotator_d    # => 92
p k.rotated_a    # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
p k.rotated_b    # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
p k.rotated_c    # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
p k.rotated_d    # => {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}

# >> 42
# >> 24
# >> 49
# >> 92
# >> {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
# >> {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
# >> {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
# >> {" "=>"J", "!"=>"K", "\""=>"L", "#"=>"M", "$"=>"N", "%"=>"O", "&"=>"P", "'"=>"Q", "("=>"R", ")"=>"S", "*"=>"T", "+"=>"U", ","=>"V", "-"=>"W", "."=>"X", "/"=>"Y", "0"=>"Z", "1"=>"[", "2"=>"\\", "3"=>"]", "4"=>"^", "5"=>"_", "6"=>"`", "7"=>"a", "8"=>"b", "9"=>"c", ":"=>"d", ";"=>"e", "<"=>"f", "="=>"g", ">"=>"h", "?"=>"i", "@"=>"j", "A"=>"k", "B"=>"l", "C"=>"m", "D"=>"n", "E"=>"o", "F"=>"p", "G"=>"q", "H"=>"r", "I"=>"s", "J"=>"t", "K"=>"u", "L"=>"v", "M"=>"w", "N"=>"x", "O"=>"y", "P"=>"z", "Q"=>" ", "R"=>"!", "S"=>"\"", "T"=>"#", "U"=>"$", "V"=>"%", "W"=>"&", "X"=>"'", "Y"=>"(", "Z"=>")", "["=>"*", "\\"=>"+", "]"=>",", "^"=>"-", "_"=>".", "`"=>"/", "a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9", "k"=>":", "l"=>";", "m"=>"<", "n"=>"=", "o"=>">", "p"=>"?", "q"=>"@", "r"=>"A", "s"=>"B", "t"=>"C", "u"=>"D", "v"=>"E", "w"=>"F", "x"=>"G", "y"=>"H", "z"=>"I"}
