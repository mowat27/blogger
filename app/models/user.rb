class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  has_secure_password

  def self.authenticate(supplied_email, supplied_password)
    user = find_by_email(supplied_email)
    if user
      user.authenticate(supplied_password)
    else
      nil
    end
  end
end
