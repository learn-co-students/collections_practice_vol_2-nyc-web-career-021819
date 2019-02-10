require 'pry'

def begins_with_r(array)
  array.all? do |string|
    string.slice(0) == "r"
  end
end

def contain_a (array)
  array.select {|string| ((string.chars).any? {|letter| letter =="a"})}
end
    #return all elements that contain the letter 'a' (FAILED - 1)

def first_wa (array)
  array.find {|string| string.slice(0,2)=="wa"}
end

def remove_non_strings(array)
  array.select {|element| element.class== String}
end

#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]))
#.to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
def count_elements(array)
  newarray = []
  valueslist = []
  array.each do |hash|
    hash.each do |key, element|
      if valueslist.include?(element)
        newarray.each do |hash|
          hash[:count]+=1
        end
      else
        newarray.push({key => element, :count => 1})
        valueslist.push(element)
      end
    end
  end
  newarray
end

def merge_data(keys,data)
  data.each do |hashes|
    hashes.each do |firstname,elements|
      keys.each do |hashes2|
        if hashes2[:first_name]==firstname
          elements.each do |key, value|
            hashes2[key]=value
          end
        end
      end
    end
  end
  keys
end

def find_cool(array)
  array.select do |item|
    item[:temperature]=="cool"
  end
end

def organize_schools(hash)
  newhash = {}
  hash.each do |school, hash|
    if newhash.key?(hash[:location])
      newhash[hash[:location]].push(school)
    else
      newhash[hash[:location]] = [school]
    end
  end
  newhash
end
