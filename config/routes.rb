Rails.application.routes.draw do

  namespace :company do
    get 'users/show'
  end

  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  scope "(:locale)", locale: /en|da/ do
    root "static_pages#home"

    get "about", to: "static_pages#about"
    get "contact", to: "static_pages#contact"

    namespace :company do
      get "settings", to: "static_pages#setting"
      get "edit/:id", to: "users#edit"
      patch "edit/:id", to: "users#update"
    end
  end
end
