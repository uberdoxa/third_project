class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.string :question
      t.string :answer
      t.integer :level_id
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
