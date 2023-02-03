# !usr/bin/env ruby
require "strscan"

file = ARGF.read
# remove special characters and convert text to array 
file_content = file.gsub(/[^A-Za-z0-9\s]/i, "")
words = file_content.split(" ")

# construct phrases from each word
phrases = (
  words.each_with_index.map { |word, index|
    "#{word} #{words[index+1]} #{words[index+2]}"
}
)

# find all matches
file_content_to_scan = StringScanner.new(file_content) 
all_matches = (
  phrases.each { |phrase|
    file_content_to_scan.scan(/[^|\s]"#{phrase}[\s|$]"/i).to_enum
}
)

# sort matches by count
matches_high_to_low = (
match_count = Hash.new(0)
all_matches.each{ |m| match_count[m] += 1 }
match_count.sort_by{ |m, number| number }
)

# return formatted as "match value - count"
formatted_matches = (
  matches_high_to_low.each.map { |m| "#{m.first} - #{m.last}" }
)

# sort high to low, return top 100
puts formatted_matches.reverse[0..100]