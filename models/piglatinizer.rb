class PigLatinizer
  def piglatinize(string)
    pig_words = []

    string.split(' ').each do |word|
      binding.pry
      word = word.downcase
      if word.match(/[aeiou]/)
        pig_words << "#{word}way"
      elsif word.match(/[^aeiou]/)
        word.find_index(/[aeiou]/)
        pig_words << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    pig_words.join(' ')
  end
end
