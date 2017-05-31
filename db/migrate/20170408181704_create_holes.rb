class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.string :picture
      t.integer :par
      t.integer :yards
      t.integer :handicap


      t.integer :course_id, :null => false, :references => [:courses, :id]

      t.timestamps
    end
  end
end
