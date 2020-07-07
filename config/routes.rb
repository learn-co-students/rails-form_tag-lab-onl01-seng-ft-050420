Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :create, :new,] do
    member do
      get 'show'
    end
    member do
      get 'new'
    end
  end

  # get '/students/new', to: 'students#new', as: 'student'

  # get '/students/:id/show', to: 'students#show', as: 'student'

end
