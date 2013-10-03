class WelcomeController < ApplicationController
  def index
    redirect_to feeds_index_path if current_student
  end
end
