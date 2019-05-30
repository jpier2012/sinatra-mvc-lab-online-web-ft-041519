class PigLatinizer
  def piglatinize(string)
    words = string.split(' ')
    words.each do |word|
      if word[0].downcase.match(/[aeiou]/)
        pig_word = "#{word}way"
      else
        pig_word = "#{word[1..-1]}#{word[0]}ay"
      end
    end
  end

end
