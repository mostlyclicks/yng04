Rails.application.routes.draw do
  
  devise_for :brands
  devise_for :admins
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :brands, only: [:index, :show] do
    resources :products
  end

end
