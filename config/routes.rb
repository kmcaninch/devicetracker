Rails.application.routes.draw do
  get 'admin/index'

  get 'success/index'

  get 'devices/edit'

  get 'checkin/index'

  get 'welcome/index'

  get 'devices/delete'

  resources :devices

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
