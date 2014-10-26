class User < ActiveRecord::Base
  #attr_accessible :username, :password, :password_confirmation

  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false},
                                        length: { minimum: 5}

  validates :password, length: { minimum: 5}
  validates :password_confirmation, length: { minimum: 5}
end
