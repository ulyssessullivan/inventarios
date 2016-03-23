class CreateAdminStaffs < ActiveRecord::Migration
  def change
    create_table :admin_staffs do |t|
      t.string :name
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
