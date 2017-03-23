class Restaurant < ActiveRecord::Base
	has_many :menutypes
	has_many :reviews
	
	# Restaurant Validators (Temp)
	validates :r_username, presence: true, uniqueness: true
	validates :r_password, presence: true, length: {minimum: 8, maximum: 16}
	validates :restaurant_name, presence: true, uniqueness: true
	validates :r_contact, presence: true, length: {minimum: 11} # cellphone number
	validates :r_address, presence: true
	validates :r_style, presence: true
	validates :r_email, presence: true # need to have regex format, d ko pa alam
	validates :r_start_time, presence: true, format: {with: /[0-9][0-9]:[0-9][0-9]\ [AM ? PM]/} # brute force format
	validates :r_close_time, presence: true, format: {with: /[0-9][0-9]:[0-9][0-9]\ [AM ? PM]/} # brute force format
	validates :r_longitude, presence: true # need to select a place
	validates :r_latitude, presence: true # need to select a place
end
	