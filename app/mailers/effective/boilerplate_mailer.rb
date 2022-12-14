module Effective
  class BoilerplateMailer < EffectiveBoilerplate.parent_mailer_class

    include EffectiveMailer
    include EffectiveEmailTemplatesMailer if EffectiveBoilerplate.use_effective_email_templates

    # def boilerplate_submitted(resource, opts = {})
    #   @assigns = assigns_for(resource)
    #   @applicant = resource

    #   subject = subject_for(__method__, "Boilerplate Submitted - #{resource}", resource, opts)
    #   headers = headers_for(resource, opts)

    #   mail(to: resource.user.email, subject: subject, **headers)
    # end

    protected

    def assigns_for(resource)
      if resource.kind_of?(Effective::Boilerplate)
        return boilerplate_assigns(resource)
      end

      raise('unexpected resource')
    end

    def boilerplate_assigns(resource)
      raise('expected an boilerplate') unless resource.class.respond_to?(:effective_boilerplate_resource?)

      values = {
        date: boilerplate.created_at.strftime('%F')
      }.compact

      { boilerplate: values }
    end

  end
end
