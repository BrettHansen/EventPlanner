class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tickets

  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      :message => "must be an email address",
                      on: :create
end
