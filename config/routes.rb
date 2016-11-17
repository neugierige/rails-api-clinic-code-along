Rails.application.routes.draw do
  resources :doctors, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # patients routes
  # get '/patients', to: 'patients#index'
  # # GET request from /patients send to the patients controller, use the show action
  # get '/patients/:id', to: 'patients#show'
  # # POST request from /patients send to the patients controller, use the create action
  # post '/patients', to: 'patients#create'
  # patch '/patients/:id', to: 'patients#update'
  # delete '/patients/:id', to: 'patients#destroy'
  # resources :patients, only: [:index, :show, :create, :update, :destroy]

  resources :patients, except: [:new, :edit]
  resources :doctors, except: [:new, :edit]

end
