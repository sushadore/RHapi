Rails.application.routes.draw do
  root to: 'clinical_vocabularies#index'
  # concern :paginatable do
  #   get 'page/:page', action: :index, on: :collection, as: ''
  # end
  resources :clinical_vocabularies do
    get 'page/:page', action: :index, on: :collection, as: ''
    collection do
      get :by_term
    end
  end
end
