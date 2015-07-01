class HousesController < HalloweenController

  get '/houses' do
    @houses = House.all
    erb :'/houses/index'
  end

  get '/houses/new' do 
    erb :'/houses/new'
  end

  get '/houses/:id' do
    @house = House.find(params[:id])
    @kids = Kid.all
    erb :'/houses/show'
  end

  post '/houses' do 
    house = House.new(params[:house])
    house.save
    redirect "/houses/#{house.id}"    
  end

  patch '/houses/:id/trick-or-treat' do 
    house = House.find(params[:id])
    kid = Kid.find(params[:kid_id])
    house.give_candy(kid)
    redirect "houses/#{house.id}"
  end

  patch '/houses/:id' do 
    house = House.find(params[:id])
    house.update(params[:house])
    house.save
    redirect "/houses/#{params[:id]}"
  end
end