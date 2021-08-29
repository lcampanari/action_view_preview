ActionViewPreview::Engine.routes.draw do
  get '/'      => 'preview#index', as: :preview_index, internal: true
  get '/*path' => 'preview#show',  as: :preview_show, internal: true
end
