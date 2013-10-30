class CreatePracticalQuestions < ActiveRecord::Migration
  def change
    create_table :practical_questions do |t|
      t.string :question
      t.string :answer
      t.integer :time
      t.integer :value
      t.string :resource
      t.timestamps
    end
  end
end
