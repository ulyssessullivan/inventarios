class Admin::Product < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :unit
  belongs_to :supplier
  attr_accessible :amount, :description, :location, :manufacturer, :name, :price, :ref, :status
end
