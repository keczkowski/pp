class AddAccessFormsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :access_forms, :boolean
  end
end
