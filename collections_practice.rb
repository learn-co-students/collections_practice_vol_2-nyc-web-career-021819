require "pry"

def begins_with_r (array)
  array.all? do |word|
    word[0] == "r"
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
    word.start_with?('wa')
  end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.uniq.each do |unique_element|
    count = 0 
    array.each do |element|
      if element == unique_element
        count += 1 
      end
    end
    unique_element[:count] = count
  end
end


def merge_data(keys, data)
  merged = []
  keys.each do |i| 
    data.first.collect do |key,value| 
      if i.values[0] == key 
        merged << i.merge(value) 
     end 
   end 
  end
  merged
end


def find_cool(array)
  cool_array = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_array << hash
      end
    end
  end
  cool_array
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
