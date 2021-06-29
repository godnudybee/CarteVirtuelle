Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  post 'validercompte', to:'utilisateur#compte'
  post 'envoisms', to:'utilisateur#otp'
  post 'transactions', to:'utilisateur#transactions'
end
