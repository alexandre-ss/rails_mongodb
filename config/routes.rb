Rails.application.routes.draw do

  resources :book_sections

  scope 'book' do
    get '/index', to: 'books#index', as: :index
    get '/new', to: 'books#new', as: :new_book
    get '/edit/:id', to: 'books#edit', as: :edit_book
    get '/show/:id', to: 'books#show', as: :show_book
    post '/new', to: 'books#create'
    patch '/edit/:id', to: 'books#update'
    delete '/delete/:id', to: 'books#destroy', as: :delete_book
  end

end
