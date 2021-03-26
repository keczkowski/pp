class AddFieldsToConcepts < ActiveRecord::Migration[6.0]
  def change
    add_column :concepts, :name_en, :string
    add_column :concepts, :body_en, :text
  end
end
