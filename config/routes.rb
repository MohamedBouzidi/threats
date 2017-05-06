Rails.application.routes.draw do
  
  root 'static_pages#index'

  get 'reports', to: 'static_pages#reports'
  get 'analytics', to: 'static_pages#analytics'
  get 'news', to: 'static_pages#news'
  get 'articles/:id', to: 'static_pages#show_article', as: 'articles'

end
