def decode_char(letter)
  case letter
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'G'
  when '-.-'
    'K'
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  else
    '-'
  end
end

def decode_word(word)
  characters = word.split
  decoded_word = ''
  characters.each { |char| decoded_word += (decode_char char) }
  decoded_word
end

def decode(sentence)
  words = sentence.split('   ')
  decoded_sentence = ''
  words.each { |word| decoded_sentence = "#{decoded_sentence}#{decode_word word} " }
  puts decoded_sentence
end

decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
