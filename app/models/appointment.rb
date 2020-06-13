class Appointment < ApplicationRecord
  belongs_to :doctor
  validates :start_from, uniqueness: true
  validate :check_minutes_seconds
  before_create :add_end_at

  def check_minutes_seconds
    byebug
    minutes = self.start_from.strftime("%M")
    seconds = self.start_from.strftime("%S")

    if (minutes.present? && minutes.to_i > 0) || (seconds.present? && seconds.to_i > 0)
      errors.add(:start_from," with Minutes or Seconds not allowed in appointment booking")
    end
  end



  def add_end_at
    self.end_at = (self.start_from.to_time + 1.hours).to_datetime
  end

end
