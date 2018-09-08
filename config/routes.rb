Rails.application.routes.draw do

  resources :arquivos
  root :to => "apresentacoes#index"
  resources :minha_paginas

  resources :desaparecidos
  resources :apresentacoes do
    collection do
      get 'colaboradores'
      get 'patrocinadores'
      get 'sobre'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
