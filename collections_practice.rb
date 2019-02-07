# your code goes here

def begins_with_r(array)
  i = 0
  while i < array.length
    if array[i][0] != "r"
    return false
  end
    i += 1
  end
      return true
  end
  
  def contain_a(array)
    i = 0 
    element_with_a = []
    while i < array.length
      if array[i].include? "a"
      element_with_a << array[i]
    end
    i += 1 
  end
  return element_with_a
end

def first_wa(array)
  array.find do |element|                       #iterating thru the array to find elements
    element[0] == "w" && element[1] == "a"        #displays elements with WA at index 0 and 1
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}  #using .class to determine class of                                                           elements
                                                      #deletes if it is not a string
end

def count_elements(array)
  counted = []                                #new array
  array.each do |hash|                        #iterate over array
    hash[:count] = 1                          #:count value = 1
    if counted.include?(hash)                 #determine if hash in present in counted
      counted[counted.index(hash)][:count] += 1       #add 1 if it is
    else
      counted << hash                         #if not,push hash into counted array
    end
  end
  return counted
end

def merge_data(array, array2)
  array.collect do |value|
    value.merge(array2[0].shift[1])
  end
end


def find_cool(array)
  array.select do |value|      #Returns an array containing all elements, in which block is true
    value[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized = {}
    schools.each do |key, value|
      location = value[:location]
      if organized[:location]
        organized[:location] << key
      end
    end
  return organized
end
    
  
  
  
  
  
end

  