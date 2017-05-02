Rails.application.routes.draw do
  
  root 'static_pages#index'

  get 'reports', to: 'static_pages#reports'
  get 'analytics', to: 'static_pages#analytics'

end
