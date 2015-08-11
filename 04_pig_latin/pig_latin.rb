def translate phrase
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  words_in_phrase = phrase.split(" ")
  
  words_in_phrase.each do |word|
    
    if word[0..1] == "qu"
      word[0..1] = ""
      word << "quay"
    
    elsif
      word[0..2].include? ("qu")
      word[0..2] = ""
      word << "squay"
      
    elsif vowels.include? (word[0])
      word << "ay"
    
    else
      until vowels.include? (word[0])
        word << word[0]
        word[0] = ""
      end
      word << "ay"
    end
  
  end

  words_in_phrase.join(" ")
end