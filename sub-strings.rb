def substrings(input_word, dictionary)
  input_array = input_word.split("")
  output_array = []

  input_array.each_with_index do |letter, index|
    test_array = input_array.slice(index..-1)

    test_array.each_with_index do |subletter, subindex|
      puts "#{letter}#{subletter}"
    end
    # puts test_array.join("")
  end

end

substrings("test", 3)