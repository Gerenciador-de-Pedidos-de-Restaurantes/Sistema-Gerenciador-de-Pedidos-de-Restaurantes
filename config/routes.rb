Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'logins/index'

  get 'clientes/perfil'

  get 'funcionarios/perfil'

  get 'logins/sair'

  get 'funcionarios/perfil'

  get 'padrao/contato'

  get 'funcionarios/perfil'

  resources :contums
  resources :funcionarios
  resources :clientes
  resources :logins

  root 'logins#index'
end
