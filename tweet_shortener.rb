# Write your code here.
def dictionary
  swaptionary = {
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
  tweetarray = tweet.split(" ")
  tweetarray.each_with_index do |word, index|
    check = word.downcase
    if dictionary.include?(check)
      tweetarray[index] = dictionary[check]
    end
  end
  tweetarray.join(" ")
end

def bulk_tweet_shortener(arrayoftweets)
  arrayoftweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet = word_substituter(tweet) if tweet.length > 140
  return tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  end
  return tweet
end