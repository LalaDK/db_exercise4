class Tweet
  include Mongoid::Document
  store_in collection: "tweets"
  
  field :id, type: Integer
  field :polarity, type: Integer
  field :date, type: DateTime
  field :query, type: String
  field :user, type: String
  field :text, type: String
  
  index({:"user" => 1}, {name: "user_index"})
  index({:"polariry" => 1}, {name: "polariry_index"})
end