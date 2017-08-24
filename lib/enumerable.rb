module Enumerable

  def my_each
    i = 0
    while i < self.size
        yield(self[i])
        i += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    while i < self.size
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    result_array = Array.new
    self.my_each do |element|
      if yield(element)
        result_array << element
      end
    end
    result_array
  end

  def my_all
    self.my_each do |element|
      return false unless yield(element)
    end
    true
  end

  def my_any?
    self.my_each do |element|
      return true unless yield(element)
    end
    false
  end

  def my_none?
    self.my_each do |element|
      return false unless yield(element)
    end
    false
  end

  def my_count
    i=0
    self.my_each do |element|
      if block_given?
        i += 1 if yield(element)
      else
        i += 1
      end
      i
  end

  def my_map(&block)
    array = Array.new
    if block_given?
      self.my_each do |element|
        array << element
      end
    else
      self.my_each do |element|
        result << element.block.call
      end
    end
    result
  end

  def my_inject(i=nil)
    if i == nil
      n=1
    else
      n=i
    end
    self.my_each do |element|
      n = yield(n, element)
    end
    n
  end

  def multiply_els(array)
    array.my_inject { |result, element| result * element }
  end
