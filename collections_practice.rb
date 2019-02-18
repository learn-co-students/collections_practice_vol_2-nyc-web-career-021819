require "pry"
def begins_with_r(tools)
  tools.each do |tool|
    if tool[0,1] != "r"
      return false
    end
  end
  return true
end

def contain_a(elements)
  elements_with_a = []
  elements.each do |element|
    if element =~ /a/
      elements_with_a.push(element)
    end
  end
  return elements_with_a
end

def first_wa(array)
  array.detect {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if{|element| element.class != String}
end

def count_elements(array)
  array.uniq.each {|element| count = 0
    array.each {|repeated_element|
      if repeated_element == element
        then count += 1
      end
    }
    element[:count] = count}
end

def merge_data(keys, data)
  merge = []
  keys.each do |key|
    name = key[:first_name]
    d = data[0][name]
    hash = key.merge(d)
    merge.push(hash)
  end
  return merge
end

def find_cool(cool)
  found = []
  cool.each do |entry|
    entry.each do |key, value|
      if value == "cool"
        found.push(entry)
      end
    end
  end
  return found
end

def organize_schools(schools)
  organizer = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    if organizer.key?(location)
      organizer[location].push(school)
    else
      organizer[location] = [school]
    end
  end
  return organizer
end
