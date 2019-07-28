Rails.application.routes.draw do

  scope "/:locale", locale: /en|tr/  do

    root 'posts#index'

    post 'welcome/index'
    get 'welcome/new'
    
    resources :articles, only: [:index, :new, :create] do
      resources :comments, only: [:index, :show] do
        collection do
          get 'search'
        end
      end
    end

    # Post actions
    resources :posts
  end
end
