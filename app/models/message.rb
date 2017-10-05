class Message < ApplicationRecord
  validates :msg, length: { maximum: 1000 }
end
