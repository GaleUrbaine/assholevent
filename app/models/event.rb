class Event < ApplicationRecord
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  belongs_to :user
  after_create :new_event

  def new_event
    EventMailer.new_event(self).deliver_now
  end


end
