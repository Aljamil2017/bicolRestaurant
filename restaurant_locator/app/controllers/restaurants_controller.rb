class RestaurantsController < ApplicationController

	def home
		@restaurants = Restaurant.all
	end

	def registration
		@restaurant = Restaurant.new
	end
	
	def register
		@restaurant = Restaurant.new()
		@restaurant.r_username = params[:restaurant][:r_username]
		@restaurant.r_password = params[:restaurant][:r_password]
		@restaurant.restaurant_name = params[:restaurant][:restaurant_name]
		@restaurant.r_contact = params[:restaurant][:r_contact]
		@restaurant.r_address = params[:restaurant][:r_address]
		@restaurant.r_style = params[:restaurant][:r_style]
		@restaurant.r_email = params[:restaurant][:r_email]
		@restaurant.r_start_time = params[:restaurant][:r_start_time]
		@restaurant.r_close_time = params[:restaurant][:r_close_time]
		@restaurant.r_longitude = params[:restaurant][:r_longitude]
		@restaurant.r_latitude = params[:restaurant][:r_latitude]
		
		# temporary validator for restaurant registration
		# dapat may laman gabos na text field pag igwa, register
		if @restaurant.save
			flash[:success] = "Successfully Created Restaurant"
			redirect_to root_path
		# pag may sarong mayong laman, balik sa registration page, wala pang error print
		else
			flash[:error] = "Error in Creating Restaurant"
			redirect_to "/restaurants/registration"
		end
	end

	def info
		@restaurant =  Restaurant.find(params[:id])
		session[:r_id] = @restaurant.id
		@menutype = Menutype.where(restaurant_id: @restaurant)

		@menutype_new = Menutype.new
		
		@dish = Dish.new
		@dishes = Dish.all
	end

	def edit_registration
		@restaurant =  Restaurant.find(params[:id])
	end

	def restaurant_update
		@restaurant =  Restaurant.find(params[:id])
		@restaurant.update({:restaurant_name => params[:restaurant][:restaurant_name],
				:r_contact => params[:restaurant][:r_contact],
				:r_address => params[:restaurant][:r_address],
				:r_email => params[:restaurant][:r_email],
				:r_style =>  params[:restaurant][:r_style],
				:r_start_time => params[:restaurant][:r_start_time],
				:r_close_time => params[:restaurant][:r_close_time],
				:r_longitude => params[:restaurant][:r_longitude],
				:r_latitude => params[:restaurant][:r_latitude] })
		redirect_to "/restaurants/info/#{@restaurant.id}"
	end

	def deactivate
		@restaurant =  Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to root_path
	end

	def create_menutype
		@menutype = Menutype.new
		@menutype.menu_name = params[:menutype][:menu_name]
		@menutype.restaurant_id = params[:menutype][:restaurant_id]
		@menutype.save
		redirect_to "/restaurants/info/#{session[:r_id]}"
	end

	def create_dish
		@dish = Dish.new
		@dish.dish_name = params[:dish][:dish_name]
		@dish.dish_price = params[:dish][:dish_price]
		@dish.menutype_id = params[:dish][:menutype_id]
		@dish.save
		redirect_to "/restaurants/info/#{session[:r_id]}"
	end
end
