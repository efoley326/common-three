require 'strscan'

class PhraseFinder
  attr_reader :text
  
  def initialize(text)
    @text = text
    self
  end
  
  def create_word_groupings
    # convert text to array 
    words = @text.split(" ")
    # construct phrase with each index as starting point
    phrases = (
    words.each_with_index.map { |word, index|
      unless "#{words[index+2]}" == nil
        "#{word} #{words[index+1]} #{words[index+2]}"
      end
      }
    )
    # return phrases as new array
    phrases      
  end
  
  def find_matches(phrases)
  # store matchdata as variable
  all_matches = (
    phrases.each { |phrase| @text.match(phrase) }
  )
  all_matches
  end
  
  
end