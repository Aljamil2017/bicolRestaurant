class Customer < ActiveRecord::Base
	has_many :reviews
	
	validates :c_username, presence: true, uniqueness: true
	validates :c_password, presence: true, length: {minimum: 8, maximum: 16}
	validates :c_firstname, presence: true, uniqueness: true
	validates :c_middlename, presence: true, uniqueness: true
	validates :c_lastname, presence: true, uniqueness: true
	validates :c_contact, presence: true, length: {minimum: 11}, numericality: true 
	validates :c_address, presence: true 
	validates :c_email, presence: true
	validates :c_longitude, presence: true 
	validates :c_latitude, presence: true
end