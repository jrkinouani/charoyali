class NotifierMailer < ApplicationMailer
  def welcome(firstlivreur)
    @firstlivreur = firstlivreur
    mail to: @firstlivreur.email, subject: "Bonjour et merci pour votre inscription sur Charoyali"
  end
end
