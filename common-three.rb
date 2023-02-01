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
      phrases.each { |phrase| @text.match(/"#{phrase}"/i) }
    )
    all_matches
  end
  
  def format_matchdata(all_matches)
    # return formatted as "match value - count"
    formatted_matches = (
    all_matches.each.map { |m|  print "#{m} - #{m.count}"}
    )
    formatted_matches
  end
  
  def sort_by_count(formatted_matches)
    matches_high_to_low = (
      formatted_matches.group_by{|m| m}.sort_by{|k, v| -v.count}.map(&:first)
    )
    matches_high_to_low
  end
  
  def render_list(matches_high_to_low)
    puts matches_high_to_low(1..100)
  end
end