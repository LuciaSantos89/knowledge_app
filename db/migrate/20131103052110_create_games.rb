class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :inProgress
      t.string :teams
      t.integer :activePracticalQuestion
      t.integer :activePopQuestion

      t.timestamps
    end
  end
end
