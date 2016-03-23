class CreateAdminSuppliers < ActiveRecord::Migration
  def change
    create_table :admin_suppliers do |t|
      t.string :name
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
