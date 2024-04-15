Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get 'top/index' =>'top#index'
 get 'schedule/index' =>'schedule#index'
 get 'schedule/result20240304' =>'schedule#result20240304'
 get 'schedule/result2024XXXX' =>'schedule#result2024XXXX'

 get 'photos' => 'photos#index'
 get 'photos/new' => 'photos#new'
 post 'photos' =>'photos#create'
 get 'photos/:id' =>'photos#show',as:'photo'

 resources 'photos' 
 root 'top#index'

 get 'members' =>'members#index'
 get 'members/new' =>'members#new'
 post 'members' =>'members#create'
 get 'members/:id' =>'members#show',as:'member'
 patch 'members/:id' =>'members#update'
 delete 'members/:id' =>'members#destroy'
 get 'members/:id/edit' =>'members#edit',as:'edit_member'


end
