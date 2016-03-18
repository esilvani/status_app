class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :text
      t.references :person

      t.timestamps null: false
    end
  end
end
