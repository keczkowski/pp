class CreateContactForms < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_forms do |t|
      t.string :email
      t.string :title
      t.text :body
      t.string :name

      t.timestamps
    end
  end
end
