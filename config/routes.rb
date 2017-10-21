Rails.application.routes.draw do
  namespace :admin do
    resources :translations

    root to: "translations#index"
    # index     get function --> /admin/translations # show all translations
    # create    post function --> /admin/translations # show all translations
    # show      get function --> /admin/translations/:id # show only one translation
    # update    PUT function --> /admin/translations/:id # upadte one translation
    # destroy   DELETE function --> /admin/translations/:id # delete one translation
    # restful API: get, post, put, delete, patch


  end

  # get /translations
  #resources :translations, only: [:index]
  get '/translations', to: 'translations#index'
  resources :sessions

end
