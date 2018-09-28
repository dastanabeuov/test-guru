class User < ApplicationRecord

  def info_passing_test(level)
    Test.joins('join users on users.id = tests.user_id')
    .where(tests: { level: level }).order(title: :ASC)
  end

end
