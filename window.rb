def naive_max_window(arr, w)
  current_max_range = 0
  arr.each_index do |i|
    min = i
    max = i + w
    break if i + w > arr.length
    range = arr[min...max].max - arr[min...max].min
    current_max_range = range if range > current_max_range
  end
  current_max_range
end

class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue
    @store.shift
  end
  
  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  ends
end

class MyStack
  def initialize
    @store = []
  end

  def push(el)
    @store << el
  end

  def pop
    @store.pop
  end

  def empty?
    @store.empty?
  end

  def peek
    @store[-1]
  end

  def size
    @store.length
  end

end


def StackQueue

  def initialize
    @enqueue_store = MyStack.new
    @dequeue_store = MyStack.new
  end

  def enqueue(el)
    @enqueue_store.push(el)
  end

  def dequeue(el)
    if @dequeue_store.empty?
      @enqueue_store.length.times{@dequeue_store.push(@enqueue_store.pop)}
    end
    @dequeue_store.pop
  end

  def size
    @dequeue_store.length + @enqueue_store.length
  end

  def empty?
    @dequeue_store.empty? && @enqueue_store.empty?
  end

end