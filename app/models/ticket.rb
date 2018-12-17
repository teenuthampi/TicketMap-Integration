class Ticket < ApplicationRecord
  has_one :excavator

   def map_coordinates
    wellknown_text.tr('POLYGON((', '').tr('))', '').split(',').map(&:split).map do |cordinate|
      { lat: cordinate[0].to_f, lng: cordinate[1].to_f }
    end
  end

end
