class AddLevelIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :level_id, :integer, :default => Level.first.id
  end
end
