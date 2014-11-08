class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tickets

  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      :message => "must be an email address",
                      on: :create
  validates :password, length: { minimum: 5}
  validates :password_confirmation, length: { minimum: 5}
end
