class AddClientIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :client_id, :integer
  end
end
