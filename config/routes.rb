NetworK::Application.routes.draw do

get "/login" => 'sessions#new'
get "/logout" => 'sessions#destroy'
get "/authenticate" => 'sessions#create'

root "pages#index"

# Pages
get "/index" => "pages#index"
get "/show" => "pages#show"
get "/contactus" => "pages#contactus"
get "/congrats" => "pages#congrats"

# Add Contact
get "/contacts/new" => "contacts#new"
get "/contacts/create" => "contacts#create"

# View Contacts
get "/contacts/view" => "contacts#view"

# UPDATE
get "/contacts/:contact_id/edit" => "contacts#edit"
get "/contacts/:contact_id/update" => "contacts#update"

#DELETE
get "/contacts/:contact_id/delete" => "contacts#destroy"

#User Info
get "/users/new" => 'users#new'
get "/users/create" => 'users#create'
get "/users/:user_id/show" => 'users#show'


end
