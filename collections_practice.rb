def begins_with_r(array)
 array.all? do |word|
   word[0] == 'r'
 end
end


#def contain_a(array)
  
#aContainer =[]
#elements = array[i]

  #counter = 0
 #while counter < array.length
    #if elements == 'a'
     # aContainer << elements
# counter += 1
#end
 # end
 #return aContainer
# end

def contain_a(array)
  array.select do  |word| 
    word.include?("a") 
  end
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String }
end

#def count_elements(array)
 # array.count {|element| element.eql?(element)}
#end


def count_elements(array)
  e_count = array.collect do |e|
    temp_e = e
    temp_e[:count] = array.count(e)
    array.delete_if{|e2| e2 == e}
    temp_e
  end
  e_count
end

def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes
end

def find_cool(ary)
  ary.select {|person| person[:temperature] == "cool"}
end

def organize_schools(schools)
organized_schools ={}
  schools.each do |school_name,data|
    data.each do |key, location|
      organized_schools[location] = [] if organized_schools[location] == nil
      organized_schools[location] << school_name
    end
  end
  organized_schools
end
