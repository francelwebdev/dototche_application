class Doctor < ApplicationRecord

    geocoded_by :address
	   after_validation :geocode, :if => :address_changed?


     # def self.search_where(search)
     #    where("address LIKE ?", "%#{search[lieu]}%")
     # end

    scope :search_where, -> { where(address: "%#{search[lieu]}%") }

end
