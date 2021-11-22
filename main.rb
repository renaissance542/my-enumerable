# frozen_string_literal: true

require_relative 'enumerable'
system "clear"

# arr = [1, 2, 3, 4]
# puts "arr = #{arr}"

# puts "\narr.each { |i| puts i}"
# p(arr.each { |i| puts i })

# puts "\narr.each"
# p arr.each

# puts "\narr.my_each { |i| puts i}"
# p(arr.my_each { |i| puts i })

# puts "\narr.my_each"
# p arr.my_each

# puts "\n   *** EACH_WITH_INDEX ***"
# puts "\narr.each_with_index { |e, i| puts \"value: \#{e} index: \#{i}\" }"
# p(arr.each_with_index { |e, i| puts "  value: #{e} index: #{i}" })

# puts "\narr.each_with_index"
# p(arr.each_with_index)

# puts "\narr.each_with_index(4, 'b')"
# p(arr.each_with_index(4, 'b'))

# puts "\n   *** MY_EACH_WITH_INDEX ***"
# puts "\narr.my_each_with_index { |e, i| puts \"value: \#{e} index: \#{i}\" }"
# p(arr.my_each_with_index { |e, i| puts "  value: #{e} index: #{i}" })

# puts "\narr.my_each_with_index"
# p(arr.my_each_with_index)

# puts "\narr.my_each_with_index(4, 'b')"
# p(arr.my_each_with_index(4, 'b'))

# puts "\n   *** SELECT ***"
# puts "\narr.select { |i| i.even? }"
# p(arr.select { |i| i.even? })

# # my_select method
# puts "\n   *** MY_SELECT ***"
# puts "\narr.my_select { |i| i.even? }"
# p(arr.my_select { |i| i.even? })



# puts "\n   *** ALL? ***"
# puts '["a", 2, "a"].all? { |i| i.is_a? Integer }'
# p(['a', 2, 'a'].all? { |i| i.is_a? Integer })
# puts '["a", 2, "a"].my_all? { |i| i.is_a? Integer }'
# p(['a', 2, 'a'].my_all? { |i| i.is_a? Integer })

# puts "\n"
# puts '[1, 2, 3].all? { |i| i.is_a? Integer }'
# p([1, 2, 3].all? { |i| i.is_a? Integer })
# puts '[1, 2, 3].my_all? { |i| i.is_a? Integer }'
# p([1, 2, 3].my_all? { |i| i.is_a? Integer })

# puts "\n"
# puts '[1, "c", nil].all?'
# p ([1, 'c', nil].all?)
# puts '[1, "c", nil].my_all?'
# p ([1, 'c', nil].my_all?)

# puts "\n"
# puts '[1, "c", 3].all?'
# p ([1, 'c', 3].all?)
# puts '[1, "c", 3].my_all?'
# p ([1, 'c', 3].my_all?)

# puts "\n   *** ANY? ***"
# puts '[1, 2, "c"].any? { |i| i.is_a? Integer }'
# puts '=>' + ([1, 2, 'c'].any? { |i| i.is_a? Integer }).to_s
# puts '[1, 2, "c"].my_any? { |i| i.is_a? Integer }'
# puts '=>' + ([1, 2, 'c'].my_any? { |i| i.is_a? Integer }).to_s

# puts "\n"
# puts '["a", "b", "c"].any? { |i| i.is_a? Integer }'
# puts '=>' + (["a", "b", "c"].any? { |i| i.is_a? Integer }).to_s
# puts '["a", "b", "c"].my_any? { |i| i.is_a? Integer }'
# puts '=>' + (["a", "b", "c"].my_any? { |i| i.is_a? Integer }).to_s

# puts "\n"
# puts '["a", "b", "c"].any? { |i| i.is_a? String }'
# puts '=>' + (["a", "b", "c"].any? { |i| i.is_a? String }).to_s
# puts '["a", "b", "c"].my_any? { |i| i.is_a? String }'
# puts '=>' + (["a", "b", "c"].my_any? { |i| i.is_a? String }).to_s

# puts "\n"
# puts '[nil, false, 3].any? '
# puts '=>' + ([nil, false, 3].any?).to_s
# puts '[nil, false, 3].my_any? '
# puts '=>' + ([nil, false, 3].my_any?).to_s

# puts "\n"
# puts '[nil, false].any? '
# puts '=>' + ([nil, false].any?).to_s
# puts '[nil, false].my_any? '
# puts '=>' + ([nil, false].my_any?).to_s


# puts "\n   *** NONE? ***"
# puts '[1, 2, "c"].none? { |i| i.is_a? Integer }'
# puts '=>' + ([1, 2, 'c'].none? { |i| i.is_a? Integer }).to_s
# puts '[1, 2, "c"].my_none? { |i| i.is_a? Integer }'
# puts '=>' + ([1, 2, 'c'].my_none? { |i| i.is_a? Integer }).to_s

# puts "\n"
# puts '["a", "b", "c"].none? { |i| i.is_a? Integer }'
# puts '=>' + (["a", "b", "c"].none? { |i| i.is_a? Integer }).to_s
# puts '["a", "b", "c"].my_none? { |i| i.is_a? Integer }'
# puts '=>' + (["a", "b", "c"].my_none? { |i| i.is_a? Integer }).to_s

# puts "\n"
# puts '["a", "b", "c"].none? { |i| i.is_a? String }'
# puts '=>' + (["a", "b", "c"].none? { |i| i.is_a? String }).to_s
# puts '["a", "b", "c"].my_none? { |i| i.is_a? String }'
# puts '=>' + (["a", "b", "c"].my_none? { |i| i.is_a? String }).to_s

# puts "\n"
# puts '[nil, false, 3].none? '
# puts '=>' + ([nil, false, 3].none?).to_s
# puts '[nil, false, 3].my_none? '
# puts '=>' + ([nil, false, 3].my_none?).to_s

# puts "\n"
# puts '[nil, false].none? '
# puts '=>' + ([nil, false].none?).to_s
# puts '[nil, false].my_none? '
# puts '=>' + ([nil, false].my_none?).to_s

# puts "\n   *** COUNT ***"
# puts "\n"
# puts '[1, 2, 4, 2].count'
# puts '=>' + ([1, 2, 4, 2].count).to_s
# puts '[1, 2, 4, 2].my_count'
# puts '=>' + ([1, 2, 4, 2].my_count).to_s

# puts "\n"
# puts '[1, 2, 4, 2].count(2)'
# puts '=>' + ([1, 2, 4, 2].count(2)).to_s
# puts '[1, 2, 4, 2].my_count(2)'
# puts '=>' + ([1, 2, 4, 2].my_count(2)).to_s

# puts "\n"
# puts '[1, 2, 4, 2].count{ |x| x%2==0 }'
# puts '=>' + ([1, 2, 4, 2].count { |x| x%2==0 }).to_s
# puts '[1, 2, 4, 2].my_count{ |x| x%2==0 }'
# puts '=>' + ([1, 2, 4, 2].my_count{ |x| x%2==0 }).to_s

# puts "\n   *** MAP ***"
# puts "\n"
# puts '[1, 2, 3, 4].map'
# puts '=>' + ([1, 2, 3, 4].map).to_s
# puts '[1, 2, 3, 4].my_map'
# puts '=>' + ([1, 2, 3, 4].my_map).to_s

# puts "\n"
# puts '[1, 2, 3, 4].map { |i| i*i }'
# puts '=>' + ([1, 2, 3, 4].map{ |i| i*i }).to_s
# puts '[1, 2, 3, 4].my_map { |i| i*i }'
# puts '=>' + ([1, 2, 3, 4].my_map{ |i| i*i }).to_s

# puts "\n"
# my_proc = Proc.new { |i| i + i }
# puts 'my_proc = Proc.new { |i| i + i }'

# puts 'my_map takes proc and block, executes proc'
# puts '[1, 2, 3, 4].my_map(my_proc)'
# puts '=>' + ([1, 2, 3, 4].my_map(my_proc)).to_s
# puts '[1, 2, 3, 4].my_map(my_proc) { |i| i*i }'
# puts '=>' + ([1, 2, 3, 4].my_map(my_proc) { |i| i*i }).to_s


puts "\n   *** INJECT ***"
puts "\n"
arr = [1, 2, 3, 4]
puts "arr = #{arr}"
puts "\n"
puts 'arr.inject { |memo, obj| memo * obj }'
puts (arr.inject { |memo, obj| memo * obj })
puts 'arr.my_inject { |memo, obj| memo * obj}'
puts (arr.my_inject { |memo, obj| memo * obj })

puts "\n"
puts 'arr.inject(0.5) { |memo, obj| memo * obj}'
puts (arr.inject(0.5) { |memo, obj| memo * obj })
puts 'arr.my_inject(0.5) { |memo, obj| memo * obj}'
puts (arr.my_inject(0.5) { |memo, obj| memo * obj })

puts "\n"
puts 'arr.inject(:*)'
puts arr.inject(:*)
puts 'arr.my_inject(:*)'
puts arr.my_inject(:*)

puts "\n"
puts 'arr.inject(0.5, :*)'
puts arr.inject(0.5, :*)
puts 'arr.my_inject(0.5, :*)'
puts arr.my_inject(0.5, :*)

hsh = { a: 1, b: 2, c: 3 }

# puts 'hsh.inject(0) { |sum, (k, v)| sum + v }'
# p hsh.inject(0) { |sum, (k, v)| sum + v } 
# # binding.pry
# p hsh.my_inject(0) { |sum, (k, v)| sum + v } 
