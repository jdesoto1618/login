Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/email'

  root 'pages#index' # routes to app/views/pages/index.html.erb
end
