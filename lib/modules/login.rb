module Authlogic
  module ActsAsAuthentic
    module Login
      module Config
        def find_by_smart_case_login_field(login)
          # Case insensitivity for my project means downcase.
          login = login.downcase unless validates_uniqueness_of_login_field_options[:case_sensitive] 

          if login_field
            where({ login_field.to_sym => login }).first
          else
            where({ email_field.to_sym => login }).first
          end
        end
      end
    end
  end
end
