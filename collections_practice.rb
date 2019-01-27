require "pry"

# your code goes here
def begins_with_r(array)
  i = 0
  while i < array.length
    if array[i][0] != "r"
      return false
    end
  i += 1
  end
  true
end

def contain_a(array)
  array1 = []
  array.each do |element|
    if element.include?("a")
      array1.push(element)
    end
  end
  array1
end

def first_wa(array)
  array.find do |element|
    if element[0] == "w" && element[1] == "a"
      return element
    end
  end
end

def remove_non_strings(array)
  array1 = []
  array.each do |element|
    if element.to_s == element
      array1.push(element)
    end
  end
  array1
end

def count_elements(array)
  array1 = array.uniq
  array1.each do |element|
    element[:count] = array.count(element)
  end
  array1
end

def merge_data(keys, data)
  keys.each do |hash|
    hash.merge!(data[0][hash[:first_name]])
  end
  keys

end

def find_cool(cool)
  array = []
  cool.each do|info|
      if info[:temperature] == "cool"
        array.push(info)
        end
    end
  array
end


def organize_schools(schools)
  hash = {}
  schools.each do|school, location|
    if hash.has_key?(location[:location])
      hash[location[:location]].push(school)
    else
      hash[location[:location]] = [school]
    end
  end
  hash
end
