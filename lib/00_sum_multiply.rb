def sum_of_3_or_5_multiples(n)
  sum = (0...n).select {|k| k%3==0 || k%5==0}.inject(0) {|s,k| s+=k}
  return sum
end
 
