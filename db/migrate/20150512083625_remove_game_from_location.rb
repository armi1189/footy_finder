class RemoveGameFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :game_id, :integer
  end
end
