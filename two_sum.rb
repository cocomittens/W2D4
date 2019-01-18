def bad_two_sum?(arr, target)
  pairs = arr.permutation(2)
  pairs = pairs.map{|pair| pair[0] + pair[1]}
  pairs.include?(target)
end

def okay_two_sum?(arr, target)
  sorted = arr.sort
  arr.each_with_index do |num, i|
    opposite = target - num
    if arr.include?(opposite)
      if opposite == num
        return true if arr[i + 1] == opposite
      else
        return true
      end
    end
  end
  false
end  

def two_sum?(arr, target)
  hash = {}
  arr.each do |el|
    return true if hash.key?(target - el)
    hash[el] = true
  end
  return false
end