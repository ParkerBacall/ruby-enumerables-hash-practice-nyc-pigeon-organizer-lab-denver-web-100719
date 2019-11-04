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
      data.each do |color_gender_lives, keys| #digs into data to get to keys of names
        keys.each do |value, array| #digs into data to get data keys and arrays of names

          array.each do |element| #element is the names stored in each array pertaining to data
            if element == name && hash_value == color_gender_lives #if element is equal to the name key for new hash and the hashvalue is eaqual to the current value of color_gender_lives
              hash[name][hash_value] << value.to_s # set the value of hash name color_gender_lives to the current value converted to a string
            end
          end
        end
      end
    end
  end
  hash
end
