class Admin::Supplier < ActiveRecord::Base
  attr_accessible :address, :name, :phone
end
