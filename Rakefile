# frozen_string_literal: true

desc "Accept file path input and run PhraseFinder functions"

task :find_phrases
  puts "which file would you like to run? ex: moby-dick.txt"
  file_name = gets.chomp
  file_path = ('common-three/texts/' + file_name)
  text = File.open(file_path, 'r')
  PhraseFinder.new(text)
  