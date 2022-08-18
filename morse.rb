MAP = {

  '.-' => 'A',

  '-...' => 'B',

  '-.-.' => 'C',

  '-..' => 'D',

  '.' => 'E',

  '..-.' => 'F',

  '--.' => 'G',

  '....' => 'H',

  '..' => 'I',

  '.---' => 'J',

  '-.-' => 'K',

  '.-..' => 'L',

  '--' => 'M',

  '-.' => 'N',

  '---' => 'O',

  '.--.' => 'P',

  '--.-' => 'Q',

  '.-.' => 'R',

  '...' => 'S',

  '-' => 'T',

  '..-' => 'U',

  '...-' => 'V',

  '.--' => 'W',

  '-..-' => 'X',

  '-.--' => 'Y',

  '--..' => 'Z',

  '-----' => '0',

  '.----' => '1',

  '..---' => '2',

  '...--' => '3',

  '....-' => '4',

  '.....' => '5',

  '-....' => '6',

  '--...' => '7',

  '---..' => '8',

  '----.' => '9'

}.freeze

def decode_char(char)
  MAP[char]
end

def decode_word(word)
  characters = word.split

  decode_word = ''

  characters.each do |c|
    decode_word += decode_char(c)
  end

  decode_word
end

def decode(message)
  words = message.split('   ')

  words = words.map { |word| decode_word(word) }

  words.join(' ')
end

puts 'Enter morse code:'

input = gets.chomp

puts decode(input)
