# File: lib/counter.rb

class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    return "Counted to #{@count} so far."
  end
end

# five = Counter.new
# five.add(5)
# puts five.report