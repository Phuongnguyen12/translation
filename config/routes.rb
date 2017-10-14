Rails.application.routes.draw do
  namespace :admin do
    resources :translations

    root to: "translations#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
