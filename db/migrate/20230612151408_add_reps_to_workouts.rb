class AddRepsToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :reps, :integer
  end
end
