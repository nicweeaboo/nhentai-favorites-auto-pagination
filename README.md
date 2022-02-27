# NHENTAI READER - INIFINITY FAVORITE RANDOM PICKER WITH AUTO SCROLL AND PAGINATION 

This is a simple and shit ruby script written with 'watir' gem to automate the use of nhentai.
You just have to put your username and password and run the script.

## What it does ?
It creates a new instance of chrome incognito mode which will run infinitely a while loop to pick randomly a doujinsh
from your favorite list. It has an smooth auto scroll due the image size and auto pagination.

You can speed up things by changing the sleep values. 

[Demonstration (NSFW)](https://imgur.com/gallery/svCdLBe) 

## How to run
### Ruby Installation

Linux (Ubuntu 18.04)
`
sudo apt install ruby-full
`

[MacOS](https://stackify.com/install-ruby-on-your-mac-everything-you-need-to-get-going/)

[Windows](https://rubyinstaller.org/) 

Check if ruby was installed succesfully by running 
`
ruby -v
`

### Dependencies

## Gems

You only need to install the watir gem. Run the following command.
`
gem install watir
`
## Drivers

Now you need to install the firefox or chrome driver. I went through a little bit of trouble to install these things. So I will show how I installed the Geckodriver for Firefox on the Ubuntu 18.04 OS. This might be useful for [Windows users](https://medium.com/ananoterminal/ambientar-selenium-no-windows-3b880fa0e827)  

[Download](https://github.com/mozilla/geckodriver/releases) the proper driver.
If the driver was downloaded in the Downloads folder, in your terminal run 
`
cd Downloads
`
`chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
`
You placed the driver where your tools can find it. 
Any problems? [Check](https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu)

### Running
1. Download the script. 

2. Open the nhentai.rb with a text editor and put your login where it says 'USER_NAME' and 'PASSWORD' (do not remove the quotes)

3. Open your terminal and change the directory to where the program is located.

4. Run the script. 
`
ruby nhentai.rb
`
