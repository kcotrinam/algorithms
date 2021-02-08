def fibonacci_total(n)
  initial = [1, 2]
  index = 0
  total = 0

  while  initial[index] + initial.last <= n
      initial << initial[index] + initial[index+1]
      index += 1
  end

  initial.map do |num|
    if num % 2 == 0
      total += num
    end
  end

  p initial.reduce(0) { |acc, num| num % 2 == 0 ? acc+num : acc}

  # p total
end


fibonacci_total(10);
fibonacci_total(100);
