class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  field :starred, type: Mongoid::Boolean
  field :author, type: String

  index({ starred: 1})

  has_many :articles
end
