# frozen_string_literal: true

require 'pry'

# custome enumerable methods
module Enumerable
  def my_each
    i = 0
    until i == length
      yield self[i]
      i += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    until i == length
      yield self[i], i
      i += 1
    end
    self
  end

  def my_select
    arr = []
    my_each { |i| arr.push(i) if yield i}
    # i = 0
    # until i == length
    #   even = yield self[i]
    #   arr.push(self[i]) if even
    #   i += 1
    # end
    arr
  end

  def my_all?
    my_each { |i| return false unless yield i }
    true
  end

  def my_any?
    my_each { |i| return true if yield i }
    false
  end

  def my_none?
    my_each { |i| return false if yield i }
    true
  end

end
