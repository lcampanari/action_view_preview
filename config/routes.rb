ActionViewPreview::Engine.routes.draw do
  get '/'      => 'preview#index'
  get '/*path' => 'preview#show'
end
