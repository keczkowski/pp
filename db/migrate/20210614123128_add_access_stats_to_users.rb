class AddAccessStatsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :access_stats, :boolean
  end
end
