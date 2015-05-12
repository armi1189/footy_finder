class AddGameToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :game, index: true, foreign_key: true
  end
end
