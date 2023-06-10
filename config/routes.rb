Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'calendar_form', to: 'work#calendar_form', as: :calendar_form

  root "work#index"
end
