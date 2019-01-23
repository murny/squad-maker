# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'squads#index'
  resources :squads, only: [:create, :destroy]

  resources :players, only: [:create]
end
