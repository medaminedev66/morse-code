class Decoder
  @alphabets = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
    'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
    'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }
  def self.decode_char(letter)
    @alphabets.each do |key, value|
      @a = key if value == letter
    end
    @a
  end
end

def decode_word(word)
  characters = word.split
  decoded_word = ''
  characters.each { |char| decoded_word += (Decoder.decode_char char) }
  decoded_word
end

def decode(sentence)
  words = sentence.split('   ')
  decoded_sentence = ''
  words.each { |word| decoded_sentence = "#{decoded_sentence}#{decode_word word} " }
  puts decoded_sentence
end

decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
