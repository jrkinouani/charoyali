class StaticPagesController < ApplicationController

  def start
    respond_to do |format|
     format.html { render :layout => 'layouts/_header' }
   end
 
  end

  def accueil
  end


  def ventes
  end

  def conditions
  end

  def FAQ
  end

  def mentions
  end

  def apropos
  end

  def pro
  end
end
