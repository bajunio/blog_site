get '/' do
  @users = User.all
  erb :index
end

get '/posts/:id' do |id|
  @posts = Post.find(user_id: id)
  erb :posts
end



