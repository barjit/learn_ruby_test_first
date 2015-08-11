def echo greet
  greet
end

def shout greet
  greet.upcase
end

def repeat (greet, times = 2)
  result = ((greet + " ") * times).rstrip
end

def start_of_word (word, first_letters)
  word[0..first_letters - 1]
end

def first_word phrase
  phrase = phrase.split(" ")
  phrase[0]
end

def titleize phrase
  little_words = ["and", "over", "the", "to", "under"]
  words = phrase.split(" ").map{|word| little_words.include?(word) ? word : word.capitalize!}
  words[0].capitalize!
  phrase = words.join(" ")
end