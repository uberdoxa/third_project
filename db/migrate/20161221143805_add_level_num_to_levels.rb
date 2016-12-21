class AddLevelNumToLevels < ActiveRecord::Migration[5.0]
  def change
    add_column :levels, :level_num, :integer
  end
end
