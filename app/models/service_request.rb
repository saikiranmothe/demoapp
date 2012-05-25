class ServiceRequest < ActiveRecord::Base
  attr_accessible :city, :country, :date, :serivce_type, :service_name, :status, :street_direction, :street_number, :zip
end
