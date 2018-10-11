class Category < ApplicationRecord
  has_many :tests, dependent: :destroy
  default_scope { order('title asc') }
  validates :title, presence: {
    message: "Наличие атрибутов title, body, email в соответствующих моделях" }
end
