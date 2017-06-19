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
    use my_each here but not each
  end
  
  def my_all
  end
  def my_any?
  end
  def my_none?
  end
  def my_count
  end
  def my_map
  end
  def my_inject
  end
end
