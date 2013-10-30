class CreatePopQuestions < ActiveRecord::Migration
  def change
    create_table :pop_questions do |t|
      t.string :question
      t.string :answer
      t.timestamps
    end
  end
end
