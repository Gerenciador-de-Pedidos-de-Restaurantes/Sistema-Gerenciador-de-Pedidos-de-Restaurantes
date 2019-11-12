Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'logins/index'

  get 'clientes/perfil'

  get 'funcionarios/perfil'

  get 'logins/sair'

  get 'funcionarios/perfil'

  get 'padrao/contato'

  get 'funcionarios/perfil'

  get 'funcionarios/menus'

  get 'orders/index'
  put 'orders/index'

  #post 'menus/order'

  put 'menus/add_item'

  put 'menus/delete_item'

#-----------------------------------------------
  put 'menusc/order'
  post 'menusc/order'

  put 'menusc/adress'

  put 'menusc/send_order'
  post 'menusc/send_order'

  post 'menusc/adress'
  get '/menusc/adress'

  resources :contums
  resources :funcionarios
  resources :clientes do
    resources :orders
  end
  resources :logins
  resources :menus
  resources :menusc

  root 'logins#index'
end
