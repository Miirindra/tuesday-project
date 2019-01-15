def is_multiple_of_3_or_5?(n)
  answer = (n%3 == 0 || n%5 == 0) ? true : false
  return answer
end

puts is_multiple_of_3_or_5?(3) #=> true
puts is_multiple_of_3_or_5?(7) #=> false
