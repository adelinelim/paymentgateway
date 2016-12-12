Rails.application.routes.draw do
  root 'payment#create'

  get "payment/create" => "payment#create", format: "json"
end
