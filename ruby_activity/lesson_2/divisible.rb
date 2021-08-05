new_array = Array.new # or []
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102].each {|a| a % 2 == 0 && new_array.push(a)}
puts new_array