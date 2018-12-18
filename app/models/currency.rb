class Currency < ApplicationRecord
	validates :currency_name, presence: true
end
