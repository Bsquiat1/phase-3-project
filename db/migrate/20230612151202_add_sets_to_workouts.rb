class AddSetsToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :sets, :integer
  end
end
