class TaiwanFood < Sinatra::Base

#route to home page
	get "/" do 
		erb :"about"
	end

#route to all of the food in the databasse
	get '/food' do
		@foods = Food.all
		erb :"index"
	end

#route to inputing new food into the database
	get '/food/new' do
		erb :new
	end

#post new items into database and then redirecting to food index page
	post '/food' do
		@foods = Food.create(params[:food])
		redirect "/food"
	end

#route to show individual food based on food's ID
	get '/food/:id' do
		@food = Food.find(params[:id])
		erb :"show"
	end


#delete route and then redirecting to food index page
	post '/food/:id/delete' do
		@foods = Food.find(params[:id])
		@foods.delete
		redirect("/food")
	end

#edit route page
 	get '/food/:id/edit' do
   	 	@food = Food.find(params[:id])
    	erb(:"edit")
  	end

#update page when successful will redirect to food index page
	post '/food/:id' do
    	@food = Food.find(params[:id])
    		if @food.update_attributes(params[:food])
      	redirect("/food")
    		else
      	erb(:"edit")
    	end
  	end

end