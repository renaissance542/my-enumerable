# frozen_string_literal: true

require_relative 'enumerable'
system "clear"

arr = [1, 2, 3, 4]
puts "arr = #{arr}"
puts '************************'

# puts "\narr.each { |i| puts i}"
# p(arr.each { |i| puts i })

# puts "\narr.my_each { |i| puts i}"
# p(arr.my_each { |i| puts i })

# puts "\narr.each_with_index"
# p(arr.each_with_index { |e, i| puts "value: #{e} index: #{i}" })

# puts "\narr.my_each_with_index"
# p(arr.my_each_with_index { |e, i| puts "value: #{e} index: #{i}" })

# p(arr.my_select { |i| i.even? })

arr = ['a', 2, 'a']
puts "arr = #{arr}"
# puts '************************'
# p(arr.my_all? { |i| i.is_a? Integer })
# p(arr.all? { |i| i.is_a? Integer })

# puts '*** #any test ***'
# p(arr.my_any? { |i| i.is_a? Integer })
# p(arr.any? { |i| i.is_a? Integer })

puts '*** #none? test ***'
p(arr.my_none? { |i| i.is_a? Integer })
p(arr.none? { |i| i.is_a? Integer })


