class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.references :follower, index: true, foreign_key: true, references: :people
      t.references :following, index: true, foreign_key: true, references: :people

      t.timestamps null: false
    end
  end
end
