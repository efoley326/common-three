require 'strscan'

class PhraseFinder
  attr_reader :text
  
  def initialize(text)
    @text = text
    self
  end
  
  def create_word_groupings
    words = @text.split(" ")
    # words = @text.scan(/\w+ \w+ \w+/i)
    phrases = (
    words.each_with_index.map { |word, index|
      unless "#{words[index+2]}" == nil
        "#{word} #{words[index+1]} #{words[index+2]}"
      end
      }
    )
    phrases      
  end
  
end