def caeser_cipher(string, shift)
    new_string = ""
    string.split('').each do |character|
        if character.ord.between?(65, 90)
            new_string += upp(character, shift) 
        elsif character.ord.between?(97, 122)
            new_string += down(character, shift)
        else
            new_string += character
        end
    end
    return new_string
end

def upp(character, shift)
    temp = character.ord
    temp += shift
    if temp > 90
        temp -= 26
    end
    return temp.chr
end

def down(character, shift)
    temp = character.ord
    temp += shift
    if temp > 122
        temp -= 26
    end
    return temp.chr
end


puts caeser_cipher('What a string!', 5)