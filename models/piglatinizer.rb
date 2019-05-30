class PigLatinizer
  def initialize(string)
    @string = string
  end

  def piglatinize
    word = string.split(' ')
    pig_string = "#{@string[1..-1]}#{@string[0]}ay"
  end

end
