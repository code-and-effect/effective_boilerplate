# frozen_string_literal: true

Rails.application.routes.draw do
  mount EffectiveBoilerplate::Engine => '/', as: 'effective_boilerplate'
end

EffectiveBoilerplate::Engine.routes.draw do
  # Public routes
  scope module: 'effective' do
  end

  namespace :admin do
  end

end
