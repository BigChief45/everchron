# Word Challenge
# ==============
# Exercise Source: https://gist.github.com/codezomb/043e887356b188dae47a

test_dic = []
test_dic = ['arrows', 'carrots', 'give', 'me', "yin"]

# File.open('dictionary.txt', 'r') do |f|
#   f.each_line do |line|
#     test_dic << line
#   end
# end

repeats = []
sequences_words = {}

test_dic.each do |word|
  word.split("").each_with_index do |char, index|
    if word.size >= 4
      seq = word[index..index+3] if index + 3 < word.size
      repeats << seq if sequences_words.has_key?(seq)
      sequences_words[seq] = word unless seq == nil
    end
  end
end

sequences_words.delete_if { |key, value| repeats.include?(key) }

puts "'sequences' \t\t 'words' \n"
sequences_words.each { |key, value| puts "#{key} \t\t #{value} " }