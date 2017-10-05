class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :msg, length: { maximum: 1000 }
end
