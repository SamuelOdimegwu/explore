def substrings(string, dictionary)
    matches = Hash.new(0)

    for item in dictionary do
        if string.downcase.include? item
            matches[item] = string.downcase.scan(item).count
        end
    end
    matches
end

dictionary = ["hey", "what's", "up", "brother", "been", "cares", "same", "shit", "hello", "world", "smith", "time", "testing", "check", "bye"]
puts "Input a string: "
string = gets.chomp.to_s

substrings(string, dictionary)