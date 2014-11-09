class Ticket < ActiveRecord::Base
  belongs_to :user

  validates :quantity, :numericality => { :greater_than => 0}
  validate :valid_event_id
  validate :valid_user_id

  def valid_event_id
    if !Event.exists?(:event_id)
      errors.add(:event_id, "invalid event_id")
    end
  end

  def valid_user_id
    if !User.exists?(:user_id)
      errors.add(:user_id, "invalid user_id")
    end
  end
end
