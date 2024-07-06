class Hangman
  def initialize
    @str = str = "
    _____
     |
     |
     |
     |
 ____|______"
  end

  def draw_hangman(lives)
    if lives == 6
      @str = "
     ______
     |    |
     |
     |
     |
 ____|______"
    elsif lives == 5
      @str = "
        ______
        |    |
        |    O
        |
        |
    ____|______"

    elsif lives == 4
      @str = "
        ______
        |    |
        |    O
        |   /
        |
    ____|______"

    elsif lives == 3
      @str = "
        ______
        |    |
        |    O
        |   / \\
        |
    ____|______"

    elsif lives == 2
      @str = "
        ______
        |    |
        |    O
        |   /|\\
        |
    ____|______"

    elsif lives == 1
      @str = "
        ______
        |    |
        |    O
        |   /|\\
        |   /
    ____|______"
    elsif lives == 0
      @str = "
        ______
        |    |
        |    O
        |   /|\\
        |   / \\
    ____|______"
    end

    puts @str

  end
end


