def first_anagram?(str, target)
  anagrams = str.chars.permutation
  anagrams.include?(target.chars)
end

def second_anagram?(str, target)
  targetarr = target.chars
  str.chars.each do |char|
    i = targetarr.find_index(char)
    targetarr.delete_at(i) if i
  end
  targetarr.empty?
end

def third_anagram?(str, target)
  str.chars.sort.join == target.chars.sort.join
end

def fourth_anagram?(str, target)
  hash = Hash.new(0)
  str.chars.each{|char| hash[char] += 1}
  target.chars.each{|char| hash[char] -= 1}
  hash.values.all?{|val| val == 0}
end
