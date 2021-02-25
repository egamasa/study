# ユーザ入力 (Kernel.#gets)
print 'Text?: '
text = gets.chomp
# print 'Pattern?: '
# pattern = gets.chomp

# RegexpErrorの場合はパターン再入力させる
begin
  print 'Pattern?: '
  pattern = gets.chomp

  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

# regexp = Regexp.new(pattern)
matches = text.scan(regexp)

if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts "Nothing matched."
end
