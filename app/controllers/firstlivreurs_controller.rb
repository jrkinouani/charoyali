class FirstlivreursController < ApplicationController
  def new
    @firstlivreur = Firstlivreur.new
    respond_to do |format|
     format.html { render :layout => 'layouts/_header' }
   end
  end

  def create

    @firstlivreur = Firstlivreur.new(firstlivreur_params)
    if @firstlivreur.save
      NotifierMailer.welcome(@firstlivreur).deliver_now
     redirect_to firstlivreurs_thanks_path
    end

  end

  def thanks
    respond_to do |format|
     format.html { render :layout => 'layouts/_header' }
   end
  end

  private

  def firstlivreur_params
    params.require(:firstlivreur).permit(:first_name,:last_name,:email,:phone,:delivery_days,:string,  :city,:string, :transport, :usual_route, :citystart)
  end
end
