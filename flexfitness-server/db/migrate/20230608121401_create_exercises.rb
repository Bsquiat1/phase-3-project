class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :muscle_group
      t.string :image_url

      t.timestamps
    end
  end
end
