module EffectiveBoilerplate
  class Engine < ::Rails::Engine
    engine_name 'effective_boilerplate'

    # Set up our default configuration options.
    initializer 'effective_boilerplate.defaults', before: :load_config_initializers do |app|
      eval File.read("#{config.root}/config/effective_boilerplate.rb")
    end

    # Include acts_as_addressable concern and allow any ActiveRecord object to call it
    initializer 'effective_boilerplate.active_record' do |app|
      ActiveSupport.on_load :active_record do
      end
    end

  end
end
