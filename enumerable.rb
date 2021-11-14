# frozen_string_literal: true

require 'pry'

# custome enumerable methods
module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    i = 0
    until i == length
      yield self[i]
      i += 1
    end
    self
  end

  def my_each_with_index(*args)
    return to_enum(:my_each_with_index, *args) unless block_given?

    length.times do |i|
      yield self[i], i
    end
    self
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    arr = []
    my_each { |i| arr.push(i) if yield i }
    arr
  end

  def my_all?(pattern = nil)
    if block_given?
      my_each { |i| return false unless yield i }
      true
    elsif pattern.nil?
      false
    else # pattern w/o block
      my_each { |i| return false unless i in pattern }
    end
  end

  def my_any?
    my_each { |i| return true if yield i }
    false
  end

  def my_none?
    my_each { |i| return false if yield i }
    true
  end

  # def match_pattern(obj, pattern)
  #   case obj
  #     in ^pattern
  #     true
  #   else
  #     false
  #   end 
  # end

end
