class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :identifier, :null => false

      t.timestamps
    end
    add_index :devices, :identifier, :unique => true
  end
end
