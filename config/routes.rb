Rails.application.routes.draw do
  resources :desaparecidos
  root :to => "apresentacoes#index"
  resources :minha_paginas
  resources :usuarios do
    collection do
      get 'login'
      post 'entrar'
      get 'edit'
    end
  end

  resources :apresentacoes do
    collection do
      get 'colaboradores'
      get 'patrocinadores'
      get 'sobre'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
