Rails.application.routes.draw do

	get 'index' => 'index#index'
	#post 'index' => 'index#create'
	#post 'index' => 'index#create_session'
	get 'sign_up' => 'signs_up#signs_up'
	post 'sign_up' => 'signs_up#create'
	get 'login' => 'logins#logins'
	post 'login' => 'logins#create_session'
	post 'index' => 'index#destroy'
	get 'serigraphy' => 'serigraphies#home_serigraphy'
	get 'promotions' => 'promotions#promotions'
	get 'cart' => 'carts#cart'
	root 'index#index'
end
