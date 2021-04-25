ActionViewPreview::Engine.routes.draw do
  resources :preview, only: [:index]

  get 'preview/*path' => 'preview#show'
end
