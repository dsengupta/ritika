class User < ActiveRecord::Base
   attr_accessible :name, :email
validates :name, :presence => true
validates :email,:presence =>true
before_create :ensure_login_has_a_value



protected
 def ensure_login_has_a_value
if name.nil?
self.name= email unless email.blank?
end
end

 before_create do |user|
    user.name = user.name.capitalize if user.name.blank?
  end

end
