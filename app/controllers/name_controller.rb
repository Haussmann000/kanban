class NameController < ApplicationController
before_action :set_newname, only: %i(edit show update)
  # def name
  #   @name = User.new
  # end
  
  def edit
    
  end
  
  def show
  end
  
  def update
      if @name.update(name_params)
        render "edit"
      else
        render "edit"
      end
    
  end
  
  private
  def name_params
    params.permit(:name).merge(id: params[:id])
  end
  
  def set_newname
    @name = User.new
    @name = User.find_by(id: params[:id])
    byebug
  end


  
end
