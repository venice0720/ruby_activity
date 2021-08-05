
    arr = [34, 15, 88, 2]
    smallest = arr[0]
    
    for  i in 0...5
        if arr[i] < smallest
            smallest = arr[i]
            break
        end
        puts "#{smallest}"
    end
    
    
    