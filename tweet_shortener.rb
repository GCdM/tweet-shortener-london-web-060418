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

def bulk_tweet_shortener(arrayoftweet)
  arrayoftweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  word_substituter(tweet) if tweet.length < 140
end