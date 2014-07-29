get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/:id' do |id|
  @post = Post.find_by_id(id)
  @comments = Comment.where(post_id: @post.id)
  erb :single_post
end