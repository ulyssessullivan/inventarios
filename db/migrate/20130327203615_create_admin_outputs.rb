class CreateAdminOutputs < ActiveRecord::Migration
  def change
    create_table :admin_outputs do |t|
      t.string :cod
      t.references :catalog
      t.references :product
      t.references :unit
      t.decimal :amount
      t.references :staff
      t.text :description

      t.timestamps
    end
    add_index :admin_outputs, :catalog_id
    add_index :admin_outputs, :product_id
    add_index :admin_outputs, :unit_id
    add_index :admin_outputs, :staff_id
  end
end
