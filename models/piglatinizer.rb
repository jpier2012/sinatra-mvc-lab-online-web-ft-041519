class PigLatinizer
  def initialize(string)
    @string = string
  end

  def piglatinize
    pig_string = "#{@string[1..-1]}#{@string[0]}ay"
  end

end
