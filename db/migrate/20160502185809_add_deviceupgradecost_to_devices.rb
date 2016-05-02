class AddDeviceupgradecostToDevices < ActiveRecord::Migration
  def change
    add_column :devices,  :device_upgrade_cost, :decimal, precision: 10, scale: 2, default: 0
  end
end
