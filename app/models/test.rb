class Test < ApplicationRecord
  belongs_to :category

  has_many :results
  has_many :users, through: :results

  has_many :questions

  def self.titles_by_category(category)
    Test.joins('join categories on categories.id = tests.category_id')
    .where(categories: { title: category })
    .order(title: :desc).pluck(:title)
  end

end
