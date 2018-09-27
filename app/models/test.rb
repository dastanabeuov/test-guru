class Test < ApplicationRecord

  def self.titles_by_category(category)
    Test.joins('join categories on categories.id = tests.category_id')
    .where(categories: { title: category })
    .order('tests.title DESC').pluck('tests.title')
  end

end
