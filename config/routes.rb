Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root URLS 
  root "pages#home"
  get '/home', to: redirect('/')

  # Pages URLS 
  get '/about', action: :about, controller: 'pages'

  # Articles URLS
  get '/articles', action: :all_articles, controller: 'articles'
  get '/articles/:id', action: :show, controller: 'articles'
end
