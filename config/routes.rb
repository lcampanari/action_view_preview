ActionViewPreview::Engine.routes.draw do
  resources :preview, only: [:index, :show]
end
