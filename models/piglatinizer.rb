class PigLatinizer
  def piglatinize(string)
    pig_words = []

    string.split(' ').each do |word|
      if word.flatten.downcase.match(/[aeiou]/)
        pig_words << "#{word}way"
      elsif word.flatten.downcase.match(/[^aeiou]/)
        word.flatten.each 

        pig_words << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    pig_words.join(' ')
  end
end
