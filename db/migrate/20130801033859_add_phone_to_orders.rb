class AddPhoneToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :phone, :integer
  end
end
