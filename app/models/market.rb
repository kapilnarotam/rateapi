class Market < ApplicationRecord
	has_many :currencies
	has_one :rate
end
