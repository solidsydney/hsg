class StudentStepsController < ApplicationController
  include Wicked::Wizard

  steps :personal, :academic, :social

  def show
    @student = current_student
    render_wizard
  end

  def update
    @student = current_student
    @student.attributes = (student_params)
    render_wizard @student
  end
  private
  # def finish_wizard_path
  #  new_picture_path
  # end

  def student_params
    params.require(:student).permit(:email, :firstname, :lastname,
                                    :middlename, :date_of_birth, :home_address, :phone_number, :reg_number,
                                    :facebook, :twitter, :google_plus, :likes, :dislikes, :discipline, :best_subject, :hobbies, :photo )
  end

end
