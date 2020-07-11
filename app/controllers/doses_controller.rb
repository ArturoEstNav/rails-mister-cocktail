class DosesController < ApplicationControllergit pu
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
  end

  private

  def dose_params
    params.require
  end
end
