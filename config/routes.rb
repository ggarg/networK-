NetworK::Application.routes.draw do
  # Pages
get "/index" => "pages#index"
get "/show" => "pages#show"
get "/contactus" => "pages#contactus"
get "/congrats" => "pages#congrats"

# Add Contact
get "/contacts/new" => "contacts#new"
get "/contacts/create" => "contacts#create"


# View Contact
get "/contacts/view" => "contacts#view"
get "/contacts/delete" => "contacts#delete"
get "/contacts/edit" => "contacts#edit"

end
