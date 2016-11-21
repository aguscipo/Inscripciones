Rails.application.routes.draw do
  root 'trabajos#new'
  post 'trabajos' => 'trabajos#create'
  get 'success' => 'trabajos#success'
end
