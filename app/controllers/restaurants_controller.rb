class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  def show

  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end


# Un visiteur peut voir la liste de tous les restaurants.
# GET "restaurants"
# Un visiteur peut ajouter un nouveau restaurant et être redirigé vers la vue show de la page de ce nouveau restaurant.
# GET "restaurants/new"
# POST "restaurants"
# Un visiteur peut voir les détails d’un restaurant, avec tous les avis associés au restaurant.
# GET "restaurants/38"
# Un visiteur peut ajouter un nouvel avis à un restaurant.
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
