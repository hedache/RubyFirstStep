Rails.application.routes.draw do
  resources :tweets
  resources :photos
  # resources :fotos, controller: :photo 
  get 'example/demo'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "hola", to: "main#hello"

  # ruta por default
  # root to: "main#hello"

  get "saludo", to: "main#grettings"

  post "hi", to: "main#salu2"

  # get "/photos/index"

  # get "example/learn"
  # cursos_controller CursosController def learn end

  # get "example", to: "example#index"
end
