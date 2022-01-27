require 'effective_resources'
require 'effective_datatables'
require 'effective_boilerplate/engine'
require 'effective_boilerplate/version'

module EffectiveBoilerplate

  def self.config_keys
    [
      :layout
    ]
  end

  include EffectiveGem

end
