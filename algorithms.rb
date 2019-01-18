require "byebug"

def my_min(nums)
  least = nums.first
  nums.each do |num|
    least = num if num < least
  end
  least
end

def largest_contiguous_subsum(arr)
  greatest_sum = arr.first
  arr.each_index do |i|
    (i...arr.length).each do |j|
      greatest_sum = arr[i..j].inject(:+) if arr[i..j].inject(:+) > greatest_sum
    end
  end
  greatest_sum
end

def not_trash_contiguous_subsum(arr)
  greatest_sum = arr.first
  curr_sum = arr.first
  arr[1..-1].each do |el|
    curr_sum = 0 if curr_sum < 0
    curr_sum += el
    greatest_sum = curr_sum if curr_sum > greatest_sum
  end
  greatest_sum
end