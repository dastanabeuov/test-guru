class Result < ApplicationRecord
  belongs_to :user
  belongs_to :test

  validates :user_id, :test_id, presence: true
end
