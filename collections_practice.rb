def begins_with_r(array)
	array.all? do |x|
		if x.upcase[0] == "R"
			true
		else
			false
		end
	end
end

def contain_a(array)
	array.delete_if do |x|
		!x.include? "a"
	end
end

def first_wa(array)
	array.find do |x|
		x.upcase[0] == "W" && x.upcase[1] == "A"
	end
end

def remove_non_strings(collection)
	collection.delete_if do |x|
		x.class != String
	end
end

def count_elements(array)
	array.uniq.each do |x|
		count = 0
		array.each {|i| if i == x then count += 1 end}
			x[:count] = count
		end
end

def merge_data(keys, data)
	merged_data = []
	keys.each { |x| data.first.collect {|k,v| if x.values[0] == k then merged_data << x.merge(v) end}}
	merged_data
end

def find_cool(object)
	object.select do |x|
		x.any? {|k,v| v == "cool"}
	end
end

def organize_schools(schools)
	new_hash = {}
	schools.collect do |k,v|
		new_hash[v[:location]] = []
	end
	new_hash.each do |k,v|
		schools.each do |k1,v1|
			if k ==v1[:location] then v << k1 end
			end
		end
	end


