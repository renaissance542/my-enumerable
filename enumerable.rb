# frozen_string_literal: true

require 'pry'

# custome enumerable methods
module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    for el in self do
      yield el
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
    elsif !pattern.nil?
      my_each { |i| return false unless pattern === i}
    else  # default block if no block or no pattern passed
      my_each { |i|return false unless i }
    end
    true
  end

  def my_any?(pattern = nil)
    if block_given?
      my_each { |i| return true if yield i }
    elsif !pattern.nil?
      my_each { |i| return true if pattern === i }
    else # default block if no block or no pattern passed
      my_each { |i|return true if i }
    end
    false
  end

  def my_none?(pattern = nil)
    if block_given?
      my_each { |i| return false if yield i }
    elsif !pattern.nil?
      my_each { |i| return false if pattern === i }
    else # default block if no block or no pattern passed
      my_each { |i| return false if i }
    end
    true
  end

  def my_count(obj = nil, &block)
    if block_given?
      my_select(&block).length
    elsif !obj.nil?
      (my_select { |i| i == obj }).length
    else
      length
    end
  end

  # map { |obj| block } → array
  # map → an_enumerator
  # Returns a new array with the results of running block once for every element in enum.
  # If no block is given, an enumerator is returned instead.
  def my_map(proc = nil)
    return to_enum(:my_map) unless block_given? || !proc.nil?

    arr = []
    if proc.nil?
      my_each_with_index { |obj, ind| arr[ind] = yield obj }
    else
      my_each_with_index { |obj, ind| arr[ind] = proc.call obj }
    end
    arr
  end

  # inject(initial, sym) → obj
  # inject(sym) → obj
  # inject(initial) { |memo, obj| block } → obj
  # inject { |memo, obj| block } → obj
  def my_inject(*args)
    memo = first
    args.each do |arg|
      if arg.instance_of?(Symbol)
        my_each { |i| memo = memo.method(arg).(i) }
      else
        memo = arg
      end
    end
    my_each { |i| memo = yield memo, i } if block_given?
    memo
  end
end
