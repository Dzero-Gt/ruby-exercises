
def merge(left, right)
    temp = []
    (left.length + right.length).times do
        if left.empty?
            temp << right.shift
        elsif right.empty?
            temp << left.shift
        else
            if left.first < right.first
                temp << left.shift
            else
                temp << right.shift
            end
        end
    end
    return temp
end

def merge_sort(array)
    if array.length >= 2
        mid = (array.length / 2).to_i
        left = merge_sort(array.slice(0, mid))
        right = merge_sort(array.slice(mid, array.length))
        return merge(left, right)
    else
        return array
    end
end



p merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])

