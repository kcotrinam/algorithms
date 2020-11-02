def repeated_string(s, n)
  return n if s == 'a'

  pattern_length = s.length
  complete_repetitions = n / pattern_length
  reminder = n % pattern_length
  repeated_a = 0
  s.length.times do |i|
    repeated_a += 1 if s[i] == 'a'
  end
  a_reminder_counter = lambda do |str, num|
    counter = 0
    num.times do |i|
      counter += 1 if str[i] == 'a'
    end
    counter
  end
  repeated_a * complete_repetitions + a_reminder_counter.call(s, reminder)
end

p repeated_string('abcac', 10)
