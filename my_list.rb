require_relative './my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end
  include MyEnumerable

  def each
    i = 0
    while i < @list.length
      puts 'yes'
      yield @list[i]
      i += 1
    end
  end
end

# test the provided test-cases
list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })

puts(list.any? { |e| e == 5 })