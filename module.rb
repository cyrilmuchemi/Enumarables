module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    my_array = []

    list.each do |i|
      my_array.push(i) if yield(i)
    end

    puts my_array.length == list.length
  end

  def any?
    my_array = []

    list.each do |i|
      my_array.push(i) if yield(i)
    end

    puts !my_array.empty?
  end

  def filter?
    my_array = []

    list.each do |i|
      my_array.push(i) if yield(i)
    end

    p my_array
  end
end
