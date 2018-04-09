require 'pry'

def swap_elements_from_to(array, index, dest_index)
  element1 = array[index]
  element2 = array[dest_index]
  array.insert(dest_index, element1)
  array.insert(index, element2)
  array.delete_at(index + 1)
  array.delete_at(dest_index + 1)
end

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  array.insert(1, array.delete_at(2))
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  keshas_array = Array.new
  array.each do |kesha|
    kesha[2] = '$'
    keshas_array << kesha
  end
  keshas_array
end

def find_a(array)
    array.select do |element|
      element.start_with?('a')
    end
end

def sum_array(array)
  array.inject {|sum, a| sum + a}
end

def add_s(array)
  array.each_with_index.collect do |item, index|
    index == 1 ? item : (item << "s")
  end
end
