class Test < ApplicationRecord

  def self.returns_sorted_in_descending_order(category)
    Test.joins(join categories on categories.id = tests.category_id)
    .where(categories: { title: category })
    .order(title: :DESC).pluck(tests.title)
  end

end
