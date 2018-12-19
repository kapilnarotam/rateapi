class Market < ApplicationRecord
	has_and_belongs_to_many :currencies
	has_one :rate
end
