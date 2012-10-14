class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :device, :null => false
      t.references :feature, :null => false
      t.integer :points, :null => false, :default => 0

      t.timestamps
    end
    add_index :votes, :device_id
    add_index :votes, :feature_id
  end
end
