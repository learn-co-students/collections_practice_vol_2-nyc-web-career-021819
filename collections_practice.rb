

def begins_with_r(array)
	if array.all? { |el| el[0] == "r" }
		return true
	else
		false
	end
end

def contain_a(array)
	array.map { |el| el if el.include?("a") }.compact
end

def first_wa(array)
	array.find { |el| el[0..1] == "wa" }
end

def remove_non_strings(array)
	array.map { |el| el if el.class == String }.compact
end


def count_elements(array)
	array.each do |hash|
		hash[:count] = 0
		name = hash[:name]

		array.each do |same_hash|
			if same_hash[:name] == name
				hash[:count] += 1
			end
		end
	end.uniq
end


def merge_data(arr1, arr2)
	arr2[0].map do |name, hash2|
		merged = {}
		arr1.each do |hash1|
			if hash1[:first_name] == name
				merged = hash1.merge(hash2)
			end
		end
		merged
	end
end

# find_cool input example: cool = [{:name => "ashley", :temperature => "sort of cool"},
# 								   {:name => "blake", :temperature => "cool"}]
# find_cool returns: an array containing the hash(es) whose :temperature value is "cool"

def find_cool(array)
	new_array = array.map do |hash|
		hash if hash[:temperature] == "cool"
	end
	new_array.compact
end



# schools = {"flatiron school bk" => {:location => "NYC"},
#		     "flatiron school" => {:location => "NYC"},
#		     "dev boot camp" => {:location => "SF"},
#		     "dev boot camp chicago" => {:location => "Chicago"},
#		     "general assembly" => {:location => "NYC"},
#		     "Hack Reactor" => {:location => "SF"}}

# organized_schools = {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     				   "SF"=>["dev boot camp", "Hack Reactor"],
#                      "Chicago"=>["dev boot camp chicago"]}




def organize_schools(schools)
	result = {}
	schools.each do |school, loc_hash|
		city = loc_hash[:location]
		if result[city]
			result[city] << school
		else
			result[city] = []
			result[city] << school 
		end
	end
	result
end

