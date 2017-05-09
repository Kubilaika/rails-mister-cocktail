class DosesController < ApplicationController
before_action :set_dose, only: [:destroy]

 def new
  @dose = Dose.new
 end

 def create
  @dose = Dose.create(dose_params)
  @dose.cocktail = @cocktail
  redirect_to cocktail_path(@cocktail)
 end

 def destroy
  @dose.destroy
  redirect_to cocktails_path
 end

 private

 def set_dose
  @dose = Dose.find(params[:id])
 end

 def dose_params
  params.require(:dose).permit(:description)
 end

end
