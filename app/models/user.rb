class User < ActiveRecord::Base

  has_many :posts

  def new
    @user = User.new
  end

end