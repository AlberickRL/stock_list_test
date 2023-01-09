class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def new
    @families = Family.new
  end

  def create
    @families = Family.new
    return on_create_sucess if @families.update(families_params)

    on_create_failed
  end

  private

  def on_create_sucess
    redirect_to families_path, success: 'Family added successfully'
  end

  def on_create_failed
    render :new, danger: 'Failed to create new Family'
  end

  def families_params
    params.require(:family).permit(:family_members, :family_name)
  end
end