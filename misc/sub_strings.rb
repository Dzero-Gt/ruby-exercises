dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    list = {}
    dictionary.each do |word|
        temp = string
        temp = temp.downcase
        list[word]
        list[word] = 0
        while temp.include?(word) == true
            list[word] += 1
            temp.sub!(word, "")
        end
    end
    list.each {|word, times| list.delete(word) if list[word] == 0}
    return list
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)