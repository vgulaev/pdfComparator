require_relative 'comparator'

cmp = Comparator.new()

r = cmp.isEq('original.pdf', 'offspring.pdf')

puts r
