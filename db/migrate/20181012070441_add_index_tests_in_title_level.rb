class AddIndexTestsInTitleLevel < ActiveRecord::Migration[5.2]
  def change
    add_index :tests, :title, unique: true
    add_index :tests, :level
  end
end
