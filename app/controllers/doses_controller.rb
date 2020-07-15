class DosesController < ApplicationControllergit pu
  def new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    if @dose
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render "cocktails/show"
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
