def substrings(input_word, input_dictionary)
  input_array = input_word.split("")
  test_array = []
  result_hash = Hash.new(0)

  input_array.each_with_index do |letter, index|
    temp = ""
    for sub_index in index..input_array.length - 1 do
      temp += input_array[sub_index].to_s
      test_array.push(temp)
    end
  end

  test_array.each do |test_item|
    if input_dictionary.include?(test_item)
      result_hash[test_item] += 1
    end
  end
  result_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)