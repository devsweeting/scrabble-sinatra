def scrabble_score(word)
  letters_array = word.upcase().split("")
  score = 0
  letters_array.each do |letter|
    if letter === "D" || letter === "G"
      score += 2
    elsif letter === "B" || letter === "C" || letter === "M" || letter === "P"
      score+=3
    elsif letter === "F" || letter === "H" || letter === "V" || letter === "W" || letter === "Y"
      score+=4
    elsif letter === "K"
        score += 5
    elsif letter === "J" || letter === "X"
      score+=8
    elsif letter === "Q" || letter === "Z"
      score+=10
    else
      score += 1
    end
  end
  score
end
