class Status < ActiveRecord::Base

  belongs_to :person

  def self.latest
    order(created_at: :desc).first
  end

  def self.not_expired
    where(:created_at => (Time.now - 2.hours)..Time.now)
  end
end
