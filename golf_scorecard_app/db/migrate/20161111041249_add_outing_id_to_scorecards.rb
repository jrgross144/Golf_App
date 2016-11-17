class AddOutingIdToScorecards < ActiveRecord::Migration[5.0]
  def change
    add_column :rounds, :outing_id, :integer,  :references => [:outing, :id]
  end
end
