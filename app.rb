class TaiwanFood < Sinatra::Base

	get "/" do 
		erb "Taiwanese Food is Bomb!"
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
		redirect "/"
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


end