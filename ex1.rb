digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

#
# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# }

# --------------

# In Ruby, given an array in one of the following forms...
#
# [apple, 1, banana, 2]
# [[apple, 1], [banana, 2]]
# # ...what is the best way to convert this into a hash in the form of...
#
# {apple => 1, banana => 2}
#
# If you want to use Array keys or values, you can use map:

digits.each do |num|
language = Hash.new
language[num] = {french: fr[num.to_i-1], english: en[num.to_i-1]}
end
  puts "Answer #{language[num]}"
# # This preserves the Array key:
#
# h3: {["orange", "seedless"]=>3, "apple"=>1, "banana"=>2}
