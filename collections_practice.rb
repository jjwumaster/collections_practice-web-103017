require "pry"

def sort_array_asc(array)
  array.sort!
end

def sort_array_desc(array)
  array.sort! {|a, b| b <=> a}
end

def sort_array_char_count(array)
  array.sort_by! {|word| word.length}
end

def swap_elements(array)
  #put each item in order unless it's at index in which case put destination there, or at destination in which case put index there
  array.collect do |item|
    if item == array[1]
      array[2]
    elsif item == array[2]
      array[1]
    else
      item
    end
  end
end

def swap_elements_advanced(array, index, destination)
  #put each item in order unless it's at index in which case put destination there, or at destination in which case put index there
  array.collect do |item|
    if item == array[index]
      array[destination]
    elsif item == array[destination]
      array[index]
    else
      item
    end
  end
end

def reverse_array(array)
  array.collect do |item|
    array[-array.find_index(item) - 1]
  end
end

def kesha_maker(array)
  array_out = []
  array.each do |item|
    output = ""
    for x in (0..item.length - 1).to_a
      if x == 2
        output << "$"
      else
        output << item[x]
      end
    end
    array_out << output
  end
  array_out
end

def find_a(array)
  array.select do |item|
    item.start_with?("a")
  end
end

def sum_array(array)
  array.inject do |sum, item|
    sum + item
  end
end

def add_s(array)
  array.each_with_index.collect do |item, index|
    if index != 1
      item << "s"
    else
      item
    end
  end
end
