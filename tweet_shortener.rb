# Write your code here.

dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }


def word_substituter(tweet)
  keys_array = dictionary.keys
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