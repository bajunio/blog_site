5.times {User.create(:user_name => "Brian", :email => "bajunio@gmail.com",
                        :password_hash => "bob", :password_salt => "bill")}

5.times {Post.create(:title => "Post Title", :body => "This is the body of my post, it can be long if I want it to be or it can be really short.", :user_id => (1 + rand(5)) )}

5.times {Comment.create(:body => "Look at my lovely body!", :user_id => (1 + rand(5)), :post_id => (1 + rand(5)) )}