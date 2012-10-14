class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :device, :null => false
      t.text :body, :null => false
      t.string :status, :null => false, :default => 'new'

      t.timestamps
    end
    add_index :features, :device_id
  end
end
