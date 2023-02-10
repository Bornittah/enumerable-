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