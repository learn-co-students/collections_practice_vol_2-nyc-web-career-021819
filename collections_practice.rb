# your code goes here
def begins_with_r (array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a (array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(list)
    list.find do |word|
      if word.class == String
        word.start_with?("wa")
      end
    end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
    array.uniq.each do |element1|
      counter = 0
      array.each do |element2|
        if element1 == element2
          counter += 1 
        end
      end
      element1[:count] = counter
    end
end


def merge_data(keys, data)
  merged_array = []
  keys.each do |i| 
    data.first.collect do |key,value| 
      if i.values[0] == key
        merged_array << i.merge(value) 
      end
    end
  end 
  merged_array
end


def find_cool(hash)
  hash.select do |member|
    member.any? do |key,value|
      value == "cool"
    end
  end
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect do |key,value| 
      locations_hash[value[:location]] = []
    end 
    locations_hash.each do |key,value| 
      schools.each do |key1,value1| 
        if key == value1[:location] 
          value << key1  
        end
      end 
    end
end
