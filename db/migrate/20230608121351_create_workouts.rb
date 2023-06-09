class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name 
      t.date :date
      t.string :description
      t.integer :duration
      t.integer :sets
      t.integer :reps
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

