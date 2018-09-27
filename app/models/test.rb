class Test < ApplicationRecord

  def self.returns_sorted_in_descending_order(category)
    if title = Category.title.include?(category)
      Test.order(title: :desc).where(test.category_id == title.id)
  end

end
