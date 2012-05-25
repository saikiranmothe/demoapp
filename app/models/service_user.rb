class ServiceUser < ActiveRecord::Base
  attr_accessible :name, :role
end
