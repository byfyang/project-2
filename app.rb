class TaiwanFood < Sinatra::Base

	get "/" do 
		erb :"about"
	end


	get '/food' do
		@foods = Food.all
		erb :"index"
	end

	get '/food/new' do
		erb :new
	end


	post '/food' do
		@foods = Food.create(params[:food])
		@foods.save
		redirect "/food"
	end


	get '/food/:id' do
		@foods = Food.all
		@foods = Food.find(params[:id])
		@foods.name
	end

	get '/food/show/:id' do
		@foods = Food.find(params[:id])
		erb :show
	end

	post '/food/:id/delete' do
		@foods = Food.find(params[:id])
		@foods.delete
		redirect("/food")
	end

  	# edit
 	get '/food/:id/edit' do
   	 	@food = Food.find(params[:id])
    	erb(:"edit")
  	end

  # update
	post '/food/:id' do
    	@food = Food.find(params[:id])
    		if @food.update_attributes(params[:food])
      	redirect("/food")
    		else
      	erb(:"edit")
    	end
  	end

end