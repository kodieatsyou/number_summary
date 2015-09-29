require_relative 'number_summary'

a = (1..6).map { |i| i }
print a, "\n"

print NumberSummary.mean(a), "\n"

array = NumberSummary.summarize('data.csv')
puts NumberSummary.min(array)
puts NumberSummary.max(array)
puts NumberSummary.mean(array)
puts NumberSummary.median(array)