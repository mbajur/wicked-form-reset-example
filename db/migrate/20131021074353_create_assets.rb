class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :asset_type
      t.references :user
      t.integer :value

      t.timestamps
    end
    add_index :assets, :user_id
  end
end
