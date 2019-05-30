class PigLatinizer
  def initialize(string)
    @string = string
  end

  def piglatinize
    words = string.split(' ')
    word.each do |word|
      "#{word[1..-1]}#{word[0]}ay"
    end
  end

end
