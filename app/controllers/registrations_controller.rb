class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    '/student_steps/personal'
  end

end
