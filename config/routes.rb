ActionViewPreview::Engine.routes.draw do
  get '/'      => 'preview#index', as: :preview_index
  get '/*path' => 'preview#show',  as: :preview_show
end
