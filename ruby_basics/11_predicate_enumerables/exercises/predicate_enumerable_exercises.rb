def coffee_drink?(drink_list)
  if drink_list.empty?
    return false
  end
  return drink_list.include?("coffee") || drink_list.include?("espresso")
end

def correct_guess?(guess_list, answer)
  if guess_list.empty?
    return false
  end
  return guess_list.include?(answer)
end

def twenty_first_century_years?(year_list)
  return year_list.all? {|number| number.between?(2001, 2100)}
end

def correct_format?(word_list)
  return word_list.none? {|word| word === word.upcase}
end

def valid_scores?(score_list, perfect_score)
  return score_list.one? {|score, value| value === perfect_score}
end
