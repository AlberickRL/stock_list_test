class PackagesController < ApplicationController
  def index
  end

  def new
    @packages = Package.new
  end
end
