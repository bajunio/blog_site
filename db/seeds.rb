5.times {User.create(:user_name => "Brian", :email => "bajunio@gmail.com",
                        :password_hash => "bob", :password_salt => "bill")}

