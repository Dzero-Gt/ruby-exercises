def stock_picker(stock)
    results = Array[1, 1]
    lowest = stock[0]
    highest = stock[0]
    stock.each do |day|
        if day > highest
            highest = day
            results[0] = stock.index(day) + 1
            
        elsif day < lowest
            lowest = day
            results[1] = stock.index(day) + 1
            
        end
    end
    return results
end

puts stock_picker([17,3,6,9,15,8,6,1,10])