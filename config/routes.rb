Rails.application.routes.draw do
  get 'health_check', to: 'health_check#show'
  post 'callback', to: 'line_bot#callback'
end
