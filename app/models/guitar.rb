class Guitar < ApplicationRecord
	validates :serial, uniqueness: true
	
	has_one :guitar_transaction
	has_one :guitar_accessory
end
