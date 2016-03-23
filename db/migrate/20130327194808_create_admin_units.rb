class CreateAdminUnits < ActiveRecord::Migration
  def change
    create_table :admin_units do |t|
      t.string :nom
      t.string :symbol
      t.integer :status

      t.timestamps
    end
  end
end
