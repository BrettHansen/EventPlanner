class Ticket < ActiveRecord::Base
  belongs_to :user

  validates :quantity, :numericality => { :greater_than => 0}
end
