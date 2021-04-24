ActionViewPreview::Engine.routes.draw do
  resources :preview, only: [:index]

  get 'preview/*path' => 'action_view_preview#show'
end
