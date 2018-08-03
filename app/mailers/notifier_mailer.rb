class NotifierMailer < ApplicationMailer
  def welcome(firstlivreur)
    @firstlivreur = firstlivreur
    mail(from: 'charoyalicontact@gmail.com', to: @firstlivreur.email, subject: "Bonjour et merci pour votre inscription sur Charoyali")
  end
end
