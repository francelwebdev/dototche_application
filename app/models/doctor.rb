class Doctor < ApplicationRecord

    geocoded_by :address
	   after_validation :geocode, :if => :address_changed?

    #  def self.search_doctor(city)
    #   where("city = ? || address = ?", city, city)
    # end

    scope :search_doctor, ->(city) { where("address = ?", city) }

end

# where("mot_cle = ? || address = ?", params[:mot_cle], params[:lieu] )
