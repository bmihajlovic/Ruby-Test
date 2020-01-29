# Automatsko testiranje - log in forma #

require 'rubygems'
require 'selenium-webdriver'

#require 'chromedriver-helper'


    Selenium::WebDriver::Chrome.driver_path = "D:/Ruby 2.6.1 + DevKit/Ruby26-x64/chromedriver_win32/chromedriver.exe"

    driver = Selenium::WebDriver.for :chrome


    driver.navigate.to "https://accounts.google.com/ServiceLogin/identifier?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2Faddmailservice&followup=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2Faddmailservice&flowName=GlifWebSignIn&flowEntry=AddSession"

puts "Otvorena je tražena web stranica."

    sleep 2


# Log in

    if driver.find_element(:id, 'identifierId').displayed?
        driver.find_element(:id, 'identifierId').send_keys 'mailadress'

    puts "Log in je prikazan i može da se unese mail adresa."
else
    puts "Unos adrese nije prikazan na display-u."
end

sleep 2


# Next step

    if  driver.find_element(:class, 'CwaK9').displayed?
        driver.find_element(:class, 'CwaK9').click

    puts "Pritiskom na dugme možemo da nastavimo sa logovanjem i unesemo password."
else
    puts "Dugme nije prikazano na display-u."
end

sleep 2


# Vidljivost unosa password-a

    if driver.find_element(:class, 'Ce1Y1c').displayed?
        driver.find_element(:class, 'Ce1Y1c').click
        
        puts "Password će biti vidljiv."
    else
        puts "Vidljivost password-a nije prikazana na display-u."
    end
    
    sleep 2

        
# Password

    if driver.find_element(:name, 'password').displayed?
        driver.find_element(:name, 'password').send_keys 'password'

        puts "Password je unešen."
    else
        puts "Mogućnost unosa passworda nije prikazana na display-u."
    end

    sleep 2


# Vidljivost unosa password-a

    if driver.find_element(:class, 'Ce1Y1c').displayed?
        driver.find_element(:class, 'Ce1Y1c').click
    
        puts "Password će ipak biti nevidljiv."
    else
        puts "Vidljivost/nevidljivost password-a nije prikazana na display-u."
    end

    sleep 2


# Next step

    if  driver.find_element(:class, 'CwaK9').displayed?
        driver.find_element(:class, 'CwaK9').click

        puts "Pritiskom na dugme omogućen je pristup nalogu."
    else
        puts "Dugme nije prikazano na display-u."
    end

    sleep 2

# Potrebno je proslediti link kako bi se pristupilo pocetnoj stranici

    driver.navigate.to "https://mail.google.com/mail/u/0/#inbox"

    puts "Pristupljeno je nalogu."

    sleep 2


# Compose new mail

    if driver.find_element(:class, 'z0').displayed?
        driver.find_element(:class, 'z0').click
        
        puts "Otvoren je prozor za pisanje novog mail-a."
    else
        puts "Na display-u se nije pojavio prozor za pisanje novog mail-a."
    end

    driver.navigate.to "https://mail.google.com/mail/u/0/#inbox?compose=new"

    sleep 2


# Izbor primaoca i subject mail-a

    if driver.find_element(:name, 'to').displayed?
        driver.find_element(:name, 'to').send_keys 'banejudo@gmail.com'

        puts "Primaoc novog mail-a je izabran."
    else
        puts "Ne postoji izbor primaoca na display-u."
    end

    sleep 2

    if driver.find_element(:name, 'subjectbox').displayed?
        driver.find_element(:name, 'subjectbox').send_keys 'Automatska poruka'

        puts "Naslov mail-a je izabran."
    else
        puts "Ne postoji mogućnost unosa naslova na display-u."
    end

    sleep 2


# Message

    if driver.find_element(:id, ':qo').displayed?
        driver.find_element(:id, ':qo').send_keys 'Pošalji mi SMS kad ti stigne mail. Molio bih da odgovor bude momentalan, a ne da me kiseliš. Radim nešto za dobrobit porodice. Hvala, MB.'

        puts "Napisana je poruka i potrebno ju je poslati."
    else
        puts "Prozor za pisanje poruke nije prikazan."
    end

    puts "Poruka je sačuvana prije slanja."


    driver.navigate.to "https://mail.google.com/mail/u/0/#drafts?compose=GTvVlcSKjsnwhdFSLvwFJLPqKFVBznmXnTnTHzBCFBNPmRHVDBzNTXCTwsHbdjVWfXRwjBXJzjTMV"

    sleep 2

    driver.navigate.to "https://mail.google.com/mail/u/0/#sent?compose=CllgCJNvwPGglSbFpbphLjQSTRQLdvcDGJvTlbGwcZPVsTstHgZlRThdJVkMhGpJBglrmgZRhrg"

    sleep 2


 # Send message

    if driver.find_element(:class, 'vh').displayed?
        driver.find_element(:class, 'vh').click

        puts "Poruka se šalje."
    else
        puts "Poruka ne može da se pošalje, jer nije ponudjeno dugme 'Send' kao opcija za slanje."
    end
    
    sleep 2

    
# Message sent 

    if driver.find_element(:class, 'J-J5-Ji').displayed?
        driver.find_element(:class, 'J-J5-Ji').click

        puts "Poruka je poslata."
    else
        puts "Poruka nije poslata."
    end

    
    sleep 3   

    driver.navigate.to "https://google.com"

    sleep 3



