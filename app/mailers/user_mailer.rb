class UserMailer < ApplicationMailer
  default "Message-ID" => lambda {"<#{SecureRandom.uuid}@slownik.cal.pl"}
  default from: "Slownik.cal.pl <mail@slownik.cal.pl>"

  def new_contact_form(contact_form)
    @contact_form = contact_form
    mail(to: "jacek.lewandowicz@put.poznan.pl", subject: "Nowe zapytanie w systemie slownik.cal.pl")
  end
end
