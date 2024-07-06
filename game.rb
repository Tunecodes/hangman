require_relative 'hangman.rb'
class Game
  def initialize
    @word = select_word
    draw_dash
    guess
  end

  def select_word
    words = File.read('words.txt').split
    flitered_words = words.select { |word| 5 <= word.length && word.length <= 12 }
    flitered_words.sample
  rescue Errno::ENOENT
    puts "File not found: #{file_path}"
  end

  def draw_dash
    '_' * @word.length
  end

  def guess
    lives = 7
    hangman = Hangman.new



    cover_word = draw_dash
    wrong_letter = ''
    until lives < 0
      hangman.draw_hangman(lives)
      get_letter = gets.chomp
      puts @word
      if @word.include?(get_letter)
        @word.each_char.with_index do |letter, index|
          cover_word[index] = get_letter if letter == get_letter
        end
      else
        wrong_letter += get_letter
      end
      puts cover_word.chars.join(' ') + "   |Wrong letters: #{wrong_letter.chars.join(' ')} |"
      lives -= 1
    end
  end
end

game = Game.new
