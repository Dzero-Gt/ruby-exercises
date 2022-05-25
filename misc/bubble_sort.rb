def bubble_sort(numbers)
    swap = true
    temp = numbers
    while swap == true
        swap = false
        leng = temp.length - 2
        for i in 0..leng
            if temp[i] > temp[i + 1]
                swap = true
                temp[i], temp[i + 1] = temp[i + 1], temp[i]
            end
        end
    end
    return temp
end

p bubble_sort([4,3,78,2,0,2])