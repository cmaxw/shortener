class AddUrlIdToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :url_id, :integer
    add_index :visits, :url_id
  end
end
