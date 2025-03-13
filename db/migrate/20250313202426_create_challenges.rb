class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.string :category

      t.timestamps
    end
  end
end
