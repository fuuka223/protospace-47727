class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def new
    
  end

  def create

  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end