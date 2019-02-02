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
      element_with_a.push(array[i])
    end
    i += 1 
  end
  return element_with_a
end

def first_wa(array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
end

def merge_data()
end
end

def find_cool()
end

def organize_schools()
end

  