class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    return on_update_sucess if @family.update(families_params)

    on_update_failed
  end

  private

  def on_update_sucess
    redirect_to families_path, success: 'Ayuda Social Asignada'
  end

  def on_update_failed
    render :index, alert: 'No se pudo asignar la ayuda social'
  end

  def families_params
    params.require(:family).permit(:family_members, :family_name, packages_attributes: [:id, :delivered])
  end
end