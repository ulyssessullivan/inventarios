class CreateAdminInputs < ActiveRecord::Migration
  def change
    create_table :admin_inputs do |t|
      t.string :cod
      t.references :catalog
      t.references :product
      t.references :unit
      t.references :supplier
      t.string :location
      t.text :description

      t.timestamps
    end
    add_index :admin_inputs, :catalog_id
    add_index :admin_inputs, :product_id
    add_index :admin_inputs, :unit_id
    add_index :admin_inputs, :supplier_id
  end
end
