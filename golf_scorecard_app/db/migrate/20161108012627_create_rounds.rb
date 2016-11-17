class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.time :timestamp
      t.integer :score
      # add_reference :products, :user, index: true, foreign_key: true
      t.integer :course_id, :null => false, :references => [:courses, :id]
      t.integer :user_id, :null => false, :references => [:users, :id]

      t.timestamps
    end
  end
end
