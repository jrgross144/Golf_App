class CreateOutings < ActiveRecord::Migration[5.0]
  def change
    create_table :outings do |t|

      t.timestamps
    end
  end
end
