class PigLatinizer

  VOWELS = "aeiou"

  def piglatinize(word)
    if VOWELS.include?(word[0].downcase)
      word = word + "way"
    else
      split_word = word.split("")
      first_vowel = split_word.find {|letter| VOWELS.include?(letter)}
      first_vowel_index = split_word.index(first_vowel)
      first_vowel_index.times {split_word << split_word.shift}
      split_word.join("") + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map {|word| piglatinize(word)}.join(" ")
  end
end
