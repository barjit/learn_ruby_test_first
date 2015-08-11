class Book
  attr_accessor :title
  
  def title=(name_of_book)
    little_words = ["and", "or", "in", "on", "of", "the", "over", "under", "a", "an"]
    words = name_of_book.split(" ").each{|word| little_words.include?(word) ? word : word.capitalize!}
    words[0].capitalize!
    @title = words.join(" ")  
  end
end

