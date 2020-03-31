# NHENTAI READER - INIFINITY FAVORITE RANDOM PICKER WITH AUTO SCROLL AND PAGINATION 

This is a simple and shit ruby script written with 'watir-webdrive' gem to automate the use of nhentai.
You just have to put your username and password and just run program.

## What it does ?
It creates a new instance of chrome incognito mode which will run infinitely a while loop to pick randomly a doujinsh
from your favorite list. It has an smooth auto scroll due the image size and auto pagination. Hands free!

You can speed up things changing the sleep values.

## How to run
### Ruby Installation

First all, you need to have Ruby programming language installed.

Linux (Ubuntu 18.04)
`
sudo apt install ruby-full
`

MacOS Check out this site https://stackify.com/install-ruby-on-your-mac-everything-you-need-to-get-going/

Windows Check out this site https://rubyinstaller.org/

### Gems

web-driver gem
`
gem install watir-webdriver -v 0.9.1
`	

selenium-webdriver

`gem install selenium-webdriver
`

Here the preview of the code working
https://imgur.com/gallery/svCdLBe


### Run
1. First of all, you download the script. 

1.5. Open the nhentai.rb with some text editor and put your login where it says 'USER_NAME' and 'PASSWORD' (don't remove the quotes)

2. Open your terminal.

3. You need to change the directory to where the program is located.

For instance, if the program is located on Downloads folder you type on terminal this:

`
cd 'Downloads'

`
4. Execute the program. 

`
ruby nhentai.rb
`



