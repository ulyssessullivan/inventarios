class Admin::Catalog < ActiveRecord::Base
  attr_accessible :description, :nom, :status
end
