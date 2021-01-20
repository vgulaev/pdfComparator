require_relative 'comparator'

cmp = Comparator.new()

r = cmp.isEq('original.pdf', 'offspring.pdf')
puts r

r = cmp.isEq('original.pdf', 'offspring.pdf', [38, 51])
puts r

# p [1, 2, 3, 4].zip([1,2,3])
