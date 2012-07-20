class User < ActiveRecord::Base
 # attr_accessible :name, :email, :first_name,:last_name,:full_name,:contact, :user_type
  has_many :posts

  validates :name, :presence =>true, :length => {:maximum =>10}
  validates :email,:presence =>true
  before_validation :ensure_login_has_a_value
  












  protected
  def ensure_login_has_a_value
    #self.name= self.name.capitalize
   # name = email if name.blank?
  end

  def make_full_name
    self.full_name=self.first_name + " " + self.last_name
  end
end
