class ChangeAdditionalServiceAreaCodeToBeArrayInTickets < ActiveRecord::Migration[5.1]
  def change
  	change_column :tickets, :additional_service_area_code, "varchar[] USING (string_to_array(additional_service_area_code, ','))"
  end
end
