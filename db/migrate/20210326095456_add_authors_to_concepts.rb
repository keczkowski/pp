class AddAuthorsToConcepts < ActiveRecord::Migration[6.0]
  def change
    add_column :concepts, :authors, :string
  end
end
