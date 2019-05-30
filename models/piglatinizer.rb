class PigLatinizer
  def piglatinize(string)
    pig_words = []

    string.split(' ').each do |word|
      word = word.downcase
      binding.pry
      if word.match(/[aeiou]/)
        pig_words << "#{word}way"
      elsif word.match(/[^aeiou]/)
        first_vowel = word.index(/[aeiou]/)
        pig_words << "#{word[first_vowel..-1]}#{word[0...first_vowel]}ay"
      else word.match(/[^aeiou]/)
        pig_words << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    pig_words.join(' ')
  end
end
