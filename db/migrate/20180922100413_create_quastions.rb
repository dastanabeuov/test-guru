class CreateQuastions < ActiveRecord::Migration[5.2]
  def change
    create_table :quastions do |t|
      t.text :body
      t.integer :test_id

      t.timestamps
    end
  end
end
