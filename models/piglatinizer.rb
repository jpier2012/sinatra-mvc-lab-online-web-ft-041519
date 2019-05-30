class PigLatinizer
  def piglatinize(string)
    pig_words = []

    string.split(' ').each do |word|
      word = word.downcase
      if word[0].match(/[aeiou]/)
        pig_words << "#{word}way"
      else
        first_vowel = word.index(/[aeiou]/)
        pig_words << "#{word[first_vowel..-1]}#{word[0...first_vowel]}ay"
      end
    end

    pig_words.join(' ')
  end
end
