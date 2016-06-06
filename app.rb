class TaiwanFood < Sinatra::Base

	get "/" do 
		erb "Taiwanese Food is Bomb!"
	end


	get '/food' do
		@foods = Food.all
		erb :"index"
	end

	get '/food/:id' do
		@foods = Food.all
		@foods = Food.find(params[:id])
		@foods.name
	end

end