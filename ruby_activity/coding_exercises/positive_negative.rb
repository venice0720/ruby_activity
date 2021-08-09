# def count_positives_sum_negatives(lst)
#     if lst === null || lst.length < 1
#         return []
#     end
#     array = [0, 0]
#     for i in lst
#         if lst[i] <= 0 
#             array[1] += lst[i]
#         end
#     elsif 
#             array[0] += 1
#         end
#     end
#     return array
# end


def count_positives_sum_negatives(lst) 

if lst.length < 1
  return []
end

var newArray = [0, 0]
for i in lst
  if lst[i] > 0
    newArray[0] += 1
  elsif
    newArray[1] += lst[i]
  end
end

return newArray
end