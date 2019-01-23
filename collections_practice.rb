def begins_with_r(array)
  array.all? {|str| str.start_with?("r", "R")}
end

def contain_a(array)
  array.select {|str| str.include?("a")}
end

def first_wa(array)
  array.find {|str| str[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|str| str.class != String}
end

def count_elements(array)
  array.uniq.each do |i|
    count = 0
    array.each do |i2|
      if i2 == i
        count += 1
      end
    end
    i[:count] = count
  end
end

def merge_data(keys, data)
  keys.each do |name|
    data.each do |data|
      name.merge!(data[name[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
  #if array[1].values[1] == "cool"
  #  [array[1]]
  #end
end

def organize_schools(array)

end
