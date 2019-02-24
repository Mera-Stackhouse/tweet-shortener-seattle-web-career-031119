# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  array = tweet.split(" ")
  new_array = array.collect {|x|
    if dictionary.has_key?(x)
      x = dictionary[x]
    else
      x 
    end
  }
  new_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
    puts word_substituter(tweet)
  }
end 

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
    if tweet.length > 140
      tweet[137] = "."
      tweet[138] = "."
      tweet[139] = "."
      tweet.slice(0, 140)
    else
      tweet
    end
  end
end

puts shortened_tweet_truncator("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")

string = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can ..."
puts string.length