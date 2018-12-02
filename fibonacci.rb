def fibs(n)
  prev1 = 0
  prev2 = 1
  sum = 0
  arr = [0, 1]
  return "0" if n == 0
  return "0, 1" if n == 1
  (n - 2).times do
    sum = prev1 + prev2
    prev1 = prev2
    prev2 = sum
    arr << sum
  end
  return arr.join(", ")
end

def fibs_rec(n)
  return [0, 1] if n == 2
  arr = fibs_rec(n - 1)
  arr << arr[-1] + arr[-2]
end

puts fibs(10)
puts fibs_rec(10).join(", ")
