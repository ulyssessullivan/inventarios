class Admin::Return < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :product
  belongs_to :unit
  belongs_to :staff
  attr_accessible :amount, :cod, :description, :state
end
