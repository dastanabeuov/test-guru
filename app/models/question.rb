class Question < ApplicationRecord
  belongs_to :test
  has_many :answers, dependent: :destroy
  validates :body, :test_id, presence: {
    message: "Наличие атрибутов title, body, email в соответствующих моделях" }
end
