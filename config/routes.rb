Rails.application.routes.draw do
  root 'payment#create'

  post "payment/create" => "payment#create", format: "json"
end
