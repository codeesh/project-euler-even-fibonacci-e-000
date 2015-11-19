# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  x = 1
  y = 0
  z = 1
  sum = 0
  list =[1,2]
  even_list = []
  until limit.to_i <= list[x] 
    list <<  list[y]+list[z]
    x += 1
    y += 1
    z += 1
  end
  list.each do |even| 
    if even % 2 == 0  && even < limit
      even_list << even
    end
  end
   return even_list.inject{|sum,a| sum + a }
end