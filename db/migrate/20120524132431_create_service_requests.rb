class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.string :service_name
      t.string :serivce_type
      t.string :status
      t.string :street_number
      t.string :street_direction
      t.string :city
      t.string :zip
      t.string :country
      t.datetime :date

      t.timestamps
    end
  end
end
