class Facultad < ApplicationRecord
	has_many :usuarios #una facultad puede pertenecer a varios users
end
