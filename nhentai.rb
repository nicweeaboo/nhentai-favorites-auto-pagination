require 'watir'

pevert = Watir::Browser.new :firefox, switches: ['--incognito']
pevert.goto 'https://nhentai.net/login/'
pevert.window.maximize
pevert.text_field(:name => 'username_or_email').set 'YOUR_USERNAME'
pevert.text_field(:name => 'password').set 'YOUR_PASSWORD'
pevert.button(:class => ['button', 'button-wide']).click
while true
    pevert.a(:href => '/favorites/').click
    sleep(1)
    pevert.a(:href => '/favorites/random').click
    sleep(1)
    url = pevert.url
    pages = pevert.as(:class => 'gallerythumb').count
    1.upto(pages).each do |page|
        pevert.goto "#{url+page.to_s}"
        height_page = pevert.section(:id => 'image-container').height
        if height_page > 1080
            scroll_time = height_page / 5.2
            1.upto(scroll_time) do
                pevert.execute_script('window.scrollBy(0,2)')
                sleep(0.02)
            end
            sleep(0.5)
        else
            sleep(1)
        end
    end
    pevert.execute_script("window.alert('Last page. Picking anohter one...')")
    sleep(3)
    pevert.alert.ok
end
