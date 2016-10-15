Tokimonstracker::Application.routes.draw do
  resources :tokimons  do
    collection do
      get 'display'
    end
  end
  resources :trainers
  root :to => 'tokimons#index'
end
