class User < ApplicationRecord

  def accepts_argument_level_test(level)
    Test.where(level: level)
  end

end
