array = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

esperanton_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  esperanton_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  #esperanton_alphabet = esperanton_alphabet.split(",")
  sorted_list = arr.sort_by do |word|
    word.split(' ').map do |letter|
      esperanton_alphabet.index(letter)
    end
  end 
  return sorted_list
end

puts alphabetize(array)

'''baseket.sort! { |a,b|
  if a.calories == b.calories
    a.name.downcase <=> b.name.downcase
  else
    # Reverse the result to sort highest first.
    -(a.calories <=> b.calories)
  end
}'''