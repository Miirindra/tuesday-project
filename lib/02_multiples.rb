def is_multiple_of_3_or_5?(n)
  answer = (n%3 == 0 || n%5 == 0) ? true : false
  return answer
end

def sum_of_3_or_5_multiples(n)
  if (n.to_i < 0) || (!n.is_a? Integer)
    sum = "Yo! Je ne prends que les entiers naturels. TG"
  else
    sum = 0
    for i in 1...n
      sum += i if is_multiple_of_3_or_5?(i)
    end
  end
  return sum
end