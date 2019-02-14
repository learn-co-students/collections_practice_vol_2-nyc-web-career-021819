# your code goes here
def begins_with_r(words)
    words.each do |word|
        if word[0] != "r"
            return false
        end
    end
    return true
end

def contain_a(return_a)
    return_a.select do |word|
        word.include?("a")
    end
end

def first_wa(array)
    array.find do |word|
        word[0, 2] == "wa"
    end
end

def remove_non_strings(array)
    array.delete_if do |element|
        element.class != String
    end
end

def count_elements(array)
    solution = []

    array.each do |element|
        found_solution_element = solution.find do |solution_element|
            solution_element[:name] == element[:name]
        end

        if found_solution_element == nil 
            found_solution_element = {:name => element[:name], :count => 0}
            solution.push(found_solution_element)
        end
        found_solution_element[:count] += 1
    end
    return solution          
end

def merge_data(hi, bye)
    solution = []
    hi.each do |info|
        bye.each do |person|
            if person.has_key?(info[:first_name])
                solution.push(person[info[:first_name]].merge(info))
            end
        end
    end
    solution     
end

def find_cool(cool)
    solution = []
    cool.each do |stats|
        if stats[:temperature] == "cool"
            solution.push(stats)
        end
    end
    solution
end

def organize_schools(schools)
    solution = {}
    schools.each do |school_name, location|
        if solution.has_key?(location[:location])
            solution[location[:location]].push(school_name)
        else
            solution[location[:location]] = [school_name]
        end
    end
    return solution
end
