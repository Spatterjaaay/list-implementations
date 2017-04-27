# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    # capacity is 10, but actual size is 0
    @storage = [0,0,0,0,0,0,0,0,0,0] # native array: fixed size, indexing only (underlying data structure)
    # there is no way to know how many elemnets are in the array (array.lenght will always return the capacity)
    # we have to track size manually
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # atm we are only deleting last value
    raise "bad things" if @size == 0
    # @storage[@size] = 0
    # we don't have to manually reassign the value, it will happen automatically,
    # when we reassign the spont next time we add value
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end

  def max
    raise "bad things" if @size == 0
    # very common mistaje to put here a placeholder, that is not already in the array
    # we should always put there a value that's already in the array
    max_value = @storage[0]
    @size.times do |i|
      max_value = @storage[i] if @storage[i] > value
    end
    return max_value
  end

  def to_s
    @size.length.times do |i|
      str += @storage[i] + ", "
    end
    return "[#{str[0..-3]}]"
  end
end
