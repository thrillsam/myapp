class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include MongoMapper::Document  
  include Mongoid::Attributes::Dynamic
  
  field :username,          type: String
  field :email,             type: String
  field :password_salt,     type: String
  field :crypted_password,  type: String
  field :persistence_token, type: String
end
