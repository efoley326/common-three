file = ARGF.read
# convert text to array 
phrases = file.split(" ").map { |word, index|
  unless "#{words[index+2]}" == nil
    "#{word} #{words[index+1]} #{words[index+2]}"
  end
  } 
# store matchdata as variable
all_matches = (
  phrases.each { |phrase| @text.match(/"#{phrase}"/i) }
)
# return formatted as "match value - count"
formatted_matches = (
all_matches.each.map { |m|  print "#{m} - #{m.count}"}
)
# sort matches by count
matches_high_to_low = (
  formatted_matches.group_by{|m| m}.sort_by{|k, v| -v.count}.map(&:first)
)
# render list of 100 phrases
puts matches_high_to_low[1..100]