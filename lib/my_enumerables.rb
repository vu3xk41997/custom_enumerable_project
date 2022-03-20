module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for element in self
      yield element, index
      index += 1
    end
  end

  def my_select
    selected = []
    for element in self
      if yield(element)
        selected << element 
      end
    end
    selected
  end

  def my_all?
    selected = []
    for element in self
      if yield(element)
        selected << element 
      end
    end
    if selected == self
      true
    else
      false
    end
  end

  def my_any?
    found_any = nil
    for element in self
      if yield(element)
        found_any = true
        break
      end
      found_any = false
    end
    found_any
  end

  def my_none?
    found_none = nil
    for element in self
      if yield(element)
        found_none = false
        break
      end
    found_none = true
    end
    found_none
  end

  def my_count
    if block_given?
      count = 0
      for element in self
        if yield(element)
          count += 1
        end
      end
      count
    else
      self.size
    end
  end

  def my_map
    new_array = []
    for element in self
      new_array << yield(element)
    end
    new_array
  end

  def my_inject(num = nil)
    result = num
    for element in self
      result = yield(result, element)
    end
    result
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield element
    end
  end
end
