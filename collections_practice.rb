# your code goes here

def begins_with_r(array)
arr=[]
array.each do |w|
  if w.chars.first.downcase == "r"
    arr.push(w)
  end
  end
  arr == array
end


def contain_a(array)
  array.delete_if{ |w| w.include?("a") == false }
end


def first_wa(array)
  array.find {|w| w[0..1] == "wa" }
end


def remove_non_strings(array)
  array.delete_if{ |w| w.to_s != w }
end


def count_elements(array)
  array.uniq.each do |w|
     count = 0
  array.each do |i|
    if i == w
      count  += 1
    end
  end
   w[:count] = count
end
end


def merge_data(keys, data)
keys.each do |elem|
data.each do |data|
	data.each do |name, info|
if name == elem[:first_name]
	elem.merge!(info)
end
end
end
end
keys
end



def find_cool(array)
array.select {|data| data[:temperature] == "cool"}
end


def organize_schools(schools)
	hash = Hash.new
	schools.each do |name, val|
			hash[val[:location]] = []
		end
		
		hash.each do |k, v|
		  schools.each do |name, val|
			if k == val[:location]
				v << name
			end
			end
		end
hash
end

