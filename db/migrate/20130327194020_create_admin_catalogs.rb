class CreateAdminCatalogs < ActiveRecord::Migration
  def change
    create_table :admin_catalogs do |t|
      t.string :nom
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
