class PackagesController < ApplicationController
  def index
  end

  def new
    @packages = Package.new
  end

  def update
    @packages = Package.new
    return on_update_sucess if @packages.update(package_params)

    on_update_failed
  end

  private

  def on_update_sucess
    redirect_to packages_path, success: 'Ayuda Social Asignada'
  end

  def on_update_failed
    render :new, danger: 'No se pudo asignar la ayuda social'
  end

  def package_params
    params.require(:package).permit(:family_id, :delivered)
  end
end
