def anagram(s)
  return -1 if s.length.odd?
  word1 = s.slice(0...s.length/2)
  word2 = s.slice(s.length/2...s.length).split('')

  return 0 if word1 == word2.join('')
  
  word1.each_char do |c|
    word2.each_with_index do |c2, idx|
      if c == c2
        word2.delete_at(idx)
        break
      end
    end
  end
  return word2.length
end

p anagram("aaabbb")
p anagram("ab")
p anagram("abc")
p anagram("mnop")
p anagram("xyyx")
p anagram("xaxbbbxx")