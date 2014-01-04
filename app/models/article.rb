class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :post_id, type: String

  belongs_to :post

  validates :name, :description, presence: true
end
