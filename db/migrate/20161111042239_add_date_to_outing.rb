class AddDateToOuting < ActiveRecord::Migration[5.0]
  def change
    add_column :outings, :date, :time
  end
end
