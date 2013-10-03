class StudentsController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def edit

  end
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to root_url, notice: 'Your details has been updated sucessfully.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:email, :firstname, :lastname,
    :middlename, :date_of_birth, :home_address, :phone_number, :reg_number,
    :facebook, :twitter, :google_plus, :likes, :dislikes, :discipline, :best_subject, :hobbies )
  end
end
