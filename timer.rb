require 'benchmark'
require_relative 'search'

names = IO.read('names.txt').split(',')
name_to_find = 'Mark'

Benchmark.bm(30) do |x|
  x.report("Simple Linear Search:") { linear_search(names, names.length, name_to_find) }
  x.report("Better Linear Search:") { better_linear_search(names, names.length, name_to_find) }
  x.report("Sentinel Linear Search:") { sentinel_search(names, names.length, name_to_find) }
  x.report("Recursive Linear Search:") { recursive_search(names, names.length, name_to_find, 0) }
end
