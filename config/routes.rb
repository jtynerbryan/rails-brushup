Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :patients, :physicians, :appointments

  get '/patient_appointments/:id', to: 'patients#appointments'

end
