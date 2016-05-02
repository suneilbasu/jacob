class AddPaidforToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :paid_for, :boolean, default: false
  end
end
