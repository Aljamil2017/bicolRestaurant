class CustomersController < ApplicationController

	def homepage
		@customer =  Customer.find(params[:id])
		session[:c_id] = @customer.id
		@restaurants = Restaurant.all
	end

	def registration
		@customer = Customer.new
	end
	
	def register
		@customer = Customer.new()
		@customer.c_username = params[:customer][:c_username]
		@customer.c_password = params[:customer][:c_password]
		@customer.c_firstname = params[:customer][:c_firstname]
		@customer.c_middlename = params[:customer][:c_middlename]
		@customer.c_lastname = params[:customer][:c_lastname]
		@customer.c_contact = params[:customer][:c_contact]
		@customer.c_address = params[:customer][:c_address]
		@customer.c_email = params[:customer][:c_email]
		@customer.c_longitude = params[:customer][:c_longitude]
		@customer.c_latitude = params[:customer][:c_latitude]
		@customer.save
		redirect_to root_path
	end


	def res_info
		@customer = Customer.find(session[:c_id])
		@restaurant =  Restaurant.find(params[:id])
		@menutype = Menutype.where(restaurant_id: @restaurant)
		@dishes = Dish.all
	end



	def edit_creg
		@customer =  Customer.find(params[:id])
	end

	def customer_update
		@customer =  Customer.find(params[:id])
		@customer.update({:c_firstname => params[:customer][:c_firstname],
				:c_middlename => params[:customer][:c_middlename],
				:c_lastname => params[:customer][:c_lastname],
				:c_address => params[:customer][:c_address],
				:c_contact => params[:customer][:c_contact],
				:c_email => params[:customer][:c_email],
				:c_longitude => params[:customer][:c_longitude],
				:c_latitude => params[:customer][:c_latitude] })
		redirect_to "/cus/#{@customer.id}/homepage"
	end
end
