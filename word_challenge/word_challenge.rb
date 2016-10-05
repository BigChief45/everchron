test_dic = []
#test_dic = ['arrows', 'carrots', 'give', 'me']

File.open('dictionary.txt', 'r') do |f|
  f.each_line do |line|
    test_dic << line.chomp
  end
end

repeats = []
invalids = ["'"]

sequences_words = {}

test_dic.each do |word|
  next if word.length < 4 || invalids.any? { |invalid_char| word.include?(invalid_char) }
  word.split("").each_with_index do |char, index|
    unless index + 4 > word.length
      seq = word[index...index+4] 
      repeats << seq if sequences_words.has_key?(seq)
      sequences_words[seq] = word unless sequences_words.has_key?(seq)
    end
  end
end

# Delete repeated keys
sequences_words.delete_if { |key, value| repeats.include?(key) }

puts "'sequences' \t\t 'words' \n"
sequences_words.each { |key, value| puts "#{key} \t\t #{value} " }