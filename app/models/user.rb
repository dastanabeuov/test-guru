class User < ApplicationRecord

  def accepts_argument_level_test(level)
    Test.join(join users on users.id = tests.user_id)
    .where(tests: { level: level }).order(title: :ASC)
  end

end
