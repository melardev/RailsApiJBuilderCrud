Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do
    resources :todos do
      get 'pending' => 'todos#get_pending', on: :collection
      get 'completed' => 'todos#get_completed', on: :collection
      delete '' => 'todos#destroy_all', on: :collection
    end
  end
end
