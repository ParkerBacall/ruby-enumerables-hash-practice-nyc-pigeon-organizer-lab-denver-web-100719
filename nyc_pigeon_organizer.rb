def nyc_pigeon_organizer(data)

  #create what will be the final hash
  hash = {}

#color_gender_lives is a variable that goes through the values color gender and lives
  data.each do |color_gender_lives, keys| #color_gender_lives is the first key which contains key pointing to arrays of names
    keys.each do |key, array| # split up keys and the arrays they piont to
      array.each do|name| # returns just the names out of each array
        if hash[name] == nil #if name is not already a key in the hash
          hash[name] = {} #make the name a key that points to a hash
          hash[name][color_gender_lives] = [] #name key points to three keys color gender and lives which points to an array
        else
          hash[name][color_gender_lives] = [] #if hash[name] exists add the current value of variable color_gender_lives this will add all three keys
        end
      end
    end
  end
  hash.each do |name, keys| # seperates keys from arrays
    keys.each do |hash_value, array| # breaks up array and keys
      data.each do |color_gender_lives, keys| #
        keys.each do |value, array|

          array.each do |element|
            if element == name && hash_value == color_gender_lives
              hash[name][hash_value] << value.to_s
          end
        end
      end
    end
  end
  pp hash
end
