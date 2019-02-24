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
  #keys_array = dictionary.keys
  array = tweet.split(" ")
  new_array = array.collect {|x|
    if dictionary.has_key?(x)
      x = dictionary[x]
    else
      x 
    end
  }
  puts new_array
  new_array.join(" ")  
end

word_substituter("hello how are you")