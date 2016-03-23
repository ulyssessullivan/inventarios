class Admin::Input < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :product
  belongs_to :unit
  belongs_to :supplier
  attr_accessible :cod, :description, :location
end
