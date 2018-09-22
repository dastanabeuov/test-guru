class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.string :quastion_id
      t.boolean :correct

      t.timestamps
    end
  end
end
