class Restaurant < ActiveRecord::Base
	has_many :menutypes
	has_many :reviews
end
