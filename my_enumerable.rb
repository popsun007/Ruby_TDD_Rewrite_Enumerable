module MyEnumerable
  def my_each
    for i in 0...self.length
      yield self[i]
    end
  end

  def my_select
    result = []
    for i in 0...self.length
      result << self[i] if yield self[i]
    end
    result
  end

  def my_reject
    result = []
    self.my_each {|item| result << item unless yield item } 
    result
  end

  def my_map
    # self.each {|item| result.push(yield item)}
    for i in 0...self.length
     self[i] = yield self[i]
    end
    self
  end

end