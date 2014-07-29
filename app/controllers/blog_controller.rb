get '/' do
  @post = Post.all
  erb :index
end

get '/posts/:id' do |id|
  @post = Post.find(id)
  erb :single_post
end



