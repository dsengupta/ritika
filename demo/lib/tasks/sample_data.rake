namespace :db do
  desc "Fill database with sample data"
  task :populate=>"environment" do
    admin = User.create!(:name=>"ritika",
                         :email=>"ritika@kreeti.com",
                        :password=>"foobar",
                         :password_confirmation=> "foobar")

end
end
