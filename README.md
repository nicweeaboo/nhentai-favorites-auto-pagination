# NHENTAI READER - INIFINITY FAVORITE RANDOM PICKER WITH AUTO SCROLL AND PAGINATION 

This is a simple and shit ruby script written with 'watir-webdrive' gem to automate the use of nhentai.
You just have to put your username and password and just run program.

## What it does ?
It creates a new instance of chrome incognito mode which will run infinitely a while loop to pick randomly a doujinsh
from your favorite list. It has an smooth auto scroll due the image size and auto pagination.
Hands free!

You can speed up things by changing the sleep values. 

You can see the code working bellow
https://imgur.com/gallery/svCdLBe

## How to run
### Ruby Installation

First all, you need to have Ruby programming language installed.

Linux (Ubuntu 18.04)
`
sudo apt install ruby-full
`

MacOS Check out this site https://stackify.com/install-ruby-on-your-mac-everything-you-need-to-get-going/

Windows Check out this site https://rubyinstaller.org/

Check if ruby was installed succesfully by running 
`
ruby -v
`


### Dependencies

## Gems

You just need to install the watir gem. Run the following command.
`
gem install watir
`
## Drivers

Now you need to install the firefox or chrome driver in order to run the script. I went through a little bit of trouble to install these things but I'm really clueless with some things. So I will show how I installed the Geckodriver for Firefox on the Ubuntu 18.04 OS. If you are using Windows or MacOS I recommend you guys search how to install because I have no ideia. This link might be useful for Windows users https://medium.com/ananoterminal/ambientar-selenium-no-windows-3b880fa0e827

First of all, go to https://github.com/mozilla/geckodriver/releases and download the proper driver and extract the file. Now you need to make it executable. Open the terminal and change the directory to where the file is.
Just for the sake of illustration, 
If the driver was downloaded in the Downloads folder, in your terminal run 
`
cd Downloads
`
Now run
`chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
`
You placed the driver where your tools can find it. 
If does not worked by any reason you can check https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu for other solutions.

### Running
1. First of all, you download the script. 

2. Open the nhentai.rb with a text editor and put your login where it says 'USER_NAME' and 'PASSWORD' (don't remove the quotes)

3. Open your terminal and change the directory to where the program is located.

4. Run the script. 
`
ruby nhentai.rb
`

Enjoy.


