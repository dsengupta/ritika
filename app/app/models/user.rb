class User < ActiveRecord::Base
 # attr_accessible :name, :email
  has_many :posts, :dependent => :destroy
  
  before_validation :ensure_login_has_a_vaue

  protected
  def ensure_login_has_a_value
    #self.name= self.name.capitalize
   # name = email if name.blank?
  end

  def make_full_name
    self.full_name=self.first_name + " " + self.last_name
  end
end
