class CreateUserChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :user_challenges do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.string :status
      t.text :challenge_text
      t.datetime :completion_date

      t.timestamps
    end
  end
end
