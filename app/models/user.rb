class User < ApplicationRecord

  def info_passing_test(level)
    Test.joins('join results on tests.id = results.test_id')
    .where("results.user_id = #{ self.id } and tests.level = #{ level }")
  end



end
