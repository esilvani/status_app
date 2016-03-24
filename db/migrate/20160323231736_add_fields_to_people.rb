class AddFieldsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
    add_column :people, :username, :string
  end
end
