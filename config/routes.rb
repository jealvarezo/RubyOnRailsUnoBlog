Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"

  # Mostrar todo
  get "articles", to: "articles#index"

  # Crear articulo
  get "articles/new", to: "articles#new"
  post 'articles', to: 'articles#create'

  # Mostrar articulo
  get 'articles/:id', to: 'articles#show'

  # Editar articulo
  get 'articles/:id/edit', to: 'articles#edit'
  patch "/articles/:id", to: "articles#update", as: :article

  # Eliminar articulo
  delete 'articles/:id', to: 'articles#destroy'

end