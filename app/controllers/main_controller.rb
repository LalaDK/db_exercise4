class MainController < ApplicationController
  def index
    #How many Twitter users are in our database?
    @user_count = Tweet.collection.distinct('user').length

    #Which Twitter users link the most to other Twitter users? (Provide the top ten.)
    @users_mentioning_most_users = Tweet.collection.aggregate([
        {"$match": {"text": /@\w+/}},
        {"$group": {_id: "$user","text": {"$push": "$text"}}},
        {"$project": {_id: "$_id", "matches": {"$size": "$text"}}},
        {"$sort": {"matches": -1}},
        {"$limit": 10}
      ], {"allowDiskUse": true})

    #Who is are the most mentioned Twitter users? (Provide the top five.)
    @most_mentioned_users = Tweet.collection.aggregate([
      {"$match":{"text":/@\w+/}},
      {"$project": {"text": {"$split": ["$text", " "]}}},
      {"$unwind": "$text"},
      {"$match": {"text": /@\w+/}},
      {"$group": {_id: "$text", "occurrences": {"$sum": 1}}},
      {"$sort": {"occurrences": -1}},
      {"$limit": 10}
    ])
  
    #Who are the most active Twitter users (top ten)?
    @most_active_users = Tweet.collection.aggregate([
      {"$group": {"_id": "$user", "tweets": {"$sum": 1}}},
      {"$sort": {"tweets": -1}},
      {"$limit": 10}
    ])
  
    #Who are the five most grumpy (most negative tweets) and the most happy (most positive tweets)? (Provide five users for each group)
    @most_negative_tweets = Tweet.collection.aggregate([
      {"$project": {"_id": "$user", "polarity": "$polarity"}},
      {"$sort": {"polarity": 1}},
      {"$limit": 10}
    ])  

    @most_positive_tweets = Tweet.collection.aggregate([
      {"$project": {"_id": "$user", "polarity": "$polarity"}},
      {"$sort": {"polarity": -1}},
      {"$limit": 10}
    ])  
  end
end