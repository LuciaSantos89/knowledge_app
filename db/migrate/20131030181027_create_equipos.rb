class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :name
      t.integer :score, :default => 0;
      t.timestamps
    
    end
  end
end
