class Isogram

  def self.isogram?(string)
    string_hash = {}
    if string.length < 0
      return false
    end 
    string = string.downcase
    string_array = string.split("") 
    string_array.each do |letter|
      if letter == "-" || letter == " " 
        string_hash[letter] = true
      elsif string_hash[letter]
        return false
      end 
      string_hash[letter] = true
    end 
    return true
  end 

end 

=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

