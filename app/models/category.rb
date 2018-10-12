class Category < ApplicationRecord
  default_scope { order('title asc') }
  has_many :tests, dependent: :destroy
  validates :title, presence: {
  message: "Наличие атрибутов title, body, email в соответствующих моделях" }
end
