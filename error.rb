def allergy_score(score)
    new_allergy_array = []
    allergies = {128 => 'cats', 64 => 'pollen', 32 => 'chocolate', 16 => 'tomatoes', 8 => 'strawberries', 4 => 'shellfish', 2 => 'peanuts', 1 => 'eggs'}
    
    allergies.each do |number, allergy|
      if score - number >= 0
        new_allergy_array << allergy
        score = score - number
      end
    end  
      new_allergy_array
  end

  puts allergy_score(256)