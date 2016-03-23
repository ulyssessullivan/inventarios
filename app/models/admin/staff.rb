class Admin::Staff < ActiveRecord::Base
  attr_accessible :address, :name, :phone
end
