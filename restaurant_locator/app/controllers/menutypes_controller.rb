class MenutypesController < ApplicationController

	def new
		@menutype = Menutype.new
	end

	def create
		@menutype = Menutype.new
		@menutype.menu_name = params[:menutype][:menu_name]
		@menutype.restaurant_id = params[:menutype][:restaurant_id]
		@menutype.save
		redirect_to root_path
	end

end
