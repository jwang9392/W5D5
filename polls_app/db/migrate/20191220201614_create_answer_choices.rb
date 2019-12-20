class CreateAnswerChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_choices do |t|
      t.text :answer, null: false
      t.integer :question_id

      t.timestamps
    end
  end
end
