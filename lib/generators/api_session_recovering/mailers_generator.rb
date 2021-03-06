module ApiSessionRecovering
  module Generators
    class MailersGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates/mail_templates/api_session_recovering/', __FILE__)

      desc 'Creates a restore_password mail template in your views dir'

      def copy_mailer
        copy_file 'restore_password_mailer/email.html.erb', 'app/views/api_session_recovering/restore_password_mailer/email.html.erb'
      end

    end
  end
end
