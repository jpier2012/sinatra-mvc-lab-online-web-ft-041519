class PigLatinizer
  def piglatinize(string)
    pig_words = []]

    string.split(' ').each do |word|
      if word[0].downcase.match(/[aeiou]/)
        pig_words << "#{word}way"
      else
        pig_word << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    pig_words.join(' ')
  end
end
