# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  keys_array = dictionary.keys
  puts keys_array
  array = tweet.split(" ")
  array.collect {|x|
    if keys_array.has_key?(x)
      x = dictionary[x]
    else
      x 
    end
  }
  array.join(" ")  
end

word_substituter("Hello how are you")