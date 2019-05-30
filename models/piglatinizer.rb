class PigLatinizer
  def piglatinize(string)
    pig_words = []

    string.split(' ').each do |word|
      word = word.downcase
      binding.pry
      if word.match(/[aeiou]/)
        pig_words << "#{word}way"
      elsif word.match(/[^aeiou]/)
        pig_words << "#{word[0...word.index(/[aeiou]/)]}ay"
        pig_words << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    pig_words.join(' ')
  end
end
