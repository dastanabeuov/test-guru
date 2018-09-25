class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.integer :question_id
      t.boolean :correct
      t.references(:questions, index: true)

      t.timestamps
    end
  end
end
