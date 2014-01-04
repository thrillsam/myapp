class UserSession < Authlogic::Session::Base
  include Mongoid::Document
  include Mongoid::Timestamps
  
end
