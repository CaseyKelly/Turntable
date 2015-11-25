Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # Routes for Dropbox API
  get '/dropbox_authorize' => 'dashboards#authorize', as: 'dropbox_authorize'
  get '/dropbox_unauthorize' => 'dashboards#unauthorize', as: 'dropbox_unauthorize'
  get '/dropbox_path_change' => 'dashboards#dropbox_path_change', as: 'dropbox_path_change'
  get '/dropbox_callback' => 'dashboards#dropbox_callback', as: 'dropbox_callback'
  get '/dropbox_download' => 'dashboards#dropbox_download', as: 'dropbox_download'
  post '/dropbox_upload' => 'dashboards#upload', as: 'upload'
  post '/dropbox_search' => 'dashboards#search', as: 'search'
end
