require 'benchmark'
require_relative 'search'

unordered_names = IO.read('unordered_names.txt').split(',')
ordered_names = IO.read('ordered_names.txt').split(',')
name_to_find = 'Mark'

Benchmark.bm(30) do |x|
  puts "Unordered List"
  x.report("Simple Linear Search:") { linear_search(unordered_names, unordered_names.length, name_to_find) }
  x.report("Better Linear Search:") { better_linear_search(unordered_names, unordered_names.length, name_to_find) }
  x.report("Sentinel Linear Search:") { sentinel_search(unordered_names, unordered_names.length, name_to_find) }
  x.report("Recursive Linear Search:") { recursive_search(unordered_names, unordered_names.length, name_to_find, 0) }
  puts "----------------- \n Ordered List"
  x.report("Simple Linear Search:") { linear_search(ordered_names, ordered_names.length, name_to_find) }
  x.report("Better Linear Search:") { better_linear_search(ordered_names, ordered_names.length, name_to_find) }
  x.report("Sentinel Linear Search:") { sentinel_search(ordered_names, ordered_names.length, name_to_find) }
  x.report("Recursive Linear Search:") { recursive_search(ordered_names, ordered_names.length, name_to_find, 0) }
  x.report("Binary Search:") { binary_search(ordered_names, ordered_names.length, name_to_find) }
  x.report("Recursive Binary Search:") { recursive_binary(ordered_names, 0, (ordered_names.length - 1), name_to_find) }
end
