class Admin::Unit < ActiveRecord::Base
  attr_accessible :nom, :status, :symbol
end
