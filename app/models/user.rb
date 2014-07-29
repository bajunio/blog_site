class User < ActiveRecord::Base

  has_many :posts
  has_many :comments

  # def new
  #   @user = User.new
  # end

end