class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false}
  validates_format_of :username,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      :message => "must be an email address",
                      on: :create
  validates :password, length: { minimum: 5}
  validates :password_confirmation, length: { minimum: 5}
end
