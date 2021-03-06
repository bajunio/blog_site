get '/' do
  erb :index
end

get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/posts/:id' do |id|
  @post = Post.find_by_id(id)
  @comments = Comment.where(post_id: @post.id)
  erb :single_post
end

get '/posts/:id/comments/new' do |id|
  @post = Post.find_by_id(id)
  erb :create_comment
end

post '/posts/:id/comment/new' do |id|
  post = Post.find_by_id(id)
  Comment.create(body: params[:body], post_id: post.id)
  redirect "/posts/#{post.id}"
end

get '/user/registration' do
  erb :user_registration
end

post '/user/registration' do
  User.create(params)
  redirect '/'
end

get '/user/login' do
  erb :user_login
end

post '/user/login' do
  user = User.find_by_user_name(params[:user_name])
  if user && params[:password_hash] == user.password_hash
    session[:id] = user.id
    redirect '/posts'
  else
    redirect '/'
  end
end