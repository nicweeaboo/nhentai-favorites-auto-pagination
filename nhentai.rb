require 'watir'

pervert = Watir::Browser.new :firefox, switches: ['--incognito']
pervert.goto 'https://nhentai.net/login/'
pervert.window.maximize
pervert.text_field(:name => 'username_or_email').set 'YOUR_USERNAME'
pervert.text_field(:name => 'password').set 'YOUR_PASSWORD'
pervert.button(:class => ['button', 'button-wide']).click
while true
    pervert.a(:href => '/favorites/').click
    sleep(1)
    pervert.a(:href => '/favorites/random').click
    sleep(1)
    url = pervert.url
    pages = pervert.as(:class => 'gallerythumb').count
    1.upto(pages).each do |page|
        pervert.goto "#{url+page.to_s}"
        height_page = pervert.section(:id => 'image-container').height
        if height_page > 1080
            scroll_time = height_page / 5.2
            1.upto(scroll_time) do
                pervert.execute_script('window.scrollBy(0,2)')
                sleep(0.02)
            end
            sleep(0.5)
        else
            sleep(1)
        end
    end
    pervert.execute_script("window.alert('Last page. Picking anohter one...')")
    sleep(3)
    pervert.alert.ok
end
