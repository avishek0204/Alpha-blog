Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root URLS 
  root "pages#home"
  get '/home', to: redirect('/')

  # Pages URLS 
  get '/about', action: :about, controller: 'pages'

  # Articles URLS
  # get '/articles', action: :all_articles, controller: 'articles'
  # get '/articles/new', action: :new, controller: 'articles'
  # post '/articles', action: :create, controller: 'articles'
  # get '/articles/:id', action: :show, controller: 'articles'
  # get '/articles/:id/edit', action: :edit, controller: 'articles'
  # patch '/articles/:id', action: :update, controller: 'articles'

  resources :articles

end
