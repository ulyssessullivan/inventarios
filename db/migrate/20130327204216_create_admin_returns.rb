class CreateAdminReturns < ActiveRecord::Migration
  def change
    create_table :admin_returns do |t|
      t.string :cod
      t.references :catalog
      t.references :product
      t.references :unit
      t.references :staff
      t.string :state
      t.decimal :amount
      t.text :description

      t.timestamps
    end
    add_index :admin_returns, :catalog_id
    add_index :admin_returns, :product_id
    add_index :admin_returns, :unit_id
    add_index :admin_returns, :staff_id
  end
end
