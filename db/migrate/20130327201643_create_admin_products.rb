class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.references :catalog
      t.references :unit
      t.references :supplier
      t.string :name
      t.string :ref
      t.string :manufacturer
      t.string :location
      t.decimal :price
      t.decimal :amount
      t.integer :status
      t.text :description

      t.timestamps
    end
    add_index :admin_products, :catalog_id
    add_index :admin_products, :unit_id
    add_index :admin_products, :supplier_id
  end
end
