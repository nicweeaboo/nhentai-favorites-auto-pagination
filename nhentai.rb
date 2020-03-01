require 'watir-webdriver'

browser = Watir::Browser.new :chrome, switches: ['--incognito']
browser.goto 'https://nhentai.net/login/'
browser.window.maximize
sleep(1)
browser.text_field(:name => 'username_or_email').set 'YOUR_USERNAME'
browser.text_field(:name => 'password').set 'YOUR_PASSWORD'
sleep(1)
browser.button(:class => ['button', 'button-wide']).click

while true
    browser.a(:href => '/favorites/').click
    sleep(1)
    browser.a(:href => '/favorites/random').click
    sleep(1)
    url = browser.url
    pages = browser.as(:class => 'gallerythumb').count
    1.upto(pages).each do |page|
        browser.goto "#{url+page.to_s}"
        height_page = browser.section(:id => 'image-container').height
        if height_page > 1080
            scroll_time = height_page / 5.2
            1.upto(scroll_time) do
                browser.execute_script('window.scrollBy(0,2)')
                sleep(0.02)
            end
            sleep(0.5)
        else
            sleep(1)
        end
    end
    browser.execute_script("window.alert('Last page. Picking anohter one...')")
    sleep(3)
    browser.alert.ok
end

