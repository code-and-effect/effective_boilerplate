EffectiveBoilerplate.setup do |config|
  # config.boilerplate_table_name = :boilerplate
  # Layout Settings
  # Configure the Layout per controller, or all at once
  # config.layout = { application: 'application', admin: 'admin' }

  # Boilerplate Settings
  # Configure the class responsible for the boilerplate.
  # This should extend from Effective::Boilerplate
  # config.boilerplate_class_name = 'Effective::Boilerplate'

  # Mailer Settings
  # Please see config/initializers/effective_boilerplate.rb for default effective_* gem mailer settings
  #
  # Configure the class responsible to send e-mails.
  # config.mailer = 'Effective::BoilerplateMailer'
  #
  # Override effective_resource mailer defaults
  #
  # config.parent_mailer = nil      # The parent class responsible for sending emails
  # config.deliver_method = nil     # The deliver method, deliver_later or deliver_now
  # config.mailer_layout = nil      # Default mailer layout
  # config.mailer_sender = nil      # Default From value
  # config.mailer_admin = nil       # Default To value for Admin correspondence
  # config.mailer_subject = nil     # Proc.new method used to customize Subject

  # Will work with effective_email_templates gem
  config.use_effective_email_templates = true
end
