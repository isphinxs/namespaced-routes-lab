Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  scope "/admin", module: "admin" do
    resources :preferences, only: [:index]
  end
  # resources :preferences, controller: "admin/preferences"
end
