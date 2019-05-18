# Write your code here.
def dictionary 
  dictioanry = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", 
  				"be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter tweet
  array_of_words = tweet.split(" ")
  new_array = array_of_words.collect do |word|
  	if dictionary.keys.include?(word.downcase)
  	  word = dictionary[word.downcase]
  	else
  	  word
  	end
  end
  tweet = new_array.join(" ")
end

def bulk_tweet_shortener array
  array.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener tweet
  if tweet.size > 140
    array_of_words = tweet.split(" ")
	new_array = array_of_words.collect do |word|
	  if dictionary.keys.include?(word)
	  	word = dictionary[word]
	  else
	  	word
	  end
	end
	tweet = new_array.join(" ")
  else
  	tweet
  end
end

def shortened_tweet_truncator tweet

  if tweet.size > 140
    array_of_words = tweet.split(" ")
	new_array = array_of_words.collect do |word|
	  if dictionary.keys.include?(word)
	  	word = dictionary[word]
	  else
	  	word
	  end
	end
	tweet = new_array.join(" ")
	if tweet.size <= 140
	  tweet
	else
	  tweet = tweet.slice(1,135)
	  tweet += "(...)"
	end
  else
  	tweet
  end
end