Rails.application.routes.draw do
  root to: "home#index"
  get "/code-of-conduct", to: "home#code_of_conduct"
  get "/cfp", to: redirect("https://rdrc-cfp.herokuapp.com/events/reddotrubyconf")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end