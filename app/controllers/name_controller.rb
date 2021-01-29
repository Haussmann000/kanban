class NameController < ApplicationController
before_action :set_editname
  def name
    
  end
  
  def edit
    
  end
  
  def update
    
      if @editname.update_attributes(current_user.id params[:name])
        redirect_to :root
      else
        render "edit"
      end
    
  end
  
  private
  def name_params
    params.require(:name).permit(:name)
  end
  
  def set_editname
    @editname = User.new
  end


  
end
