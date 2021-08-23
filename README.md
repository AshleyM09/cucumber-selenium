# Cucumber Selenium

## Summary
A small sample of self-written code displaying how cucumber selenium code against an online testing playground.

## Installation Instructions

### System Prerequisits
- Windows 10 (Ubuntu Linux subsystem)


#### Install Ruby
In your Ubuntu bash terminal paste and enter

`sudo apt update && sudo apt dist-upgrade && sudo apt autoremove && sudo apt clean`

Then

`sudo apt install ruby-full`

Confirm the space allocation and hit Enter to proceed. Once installation is completed, you can confirm the ruby installation with `ruby -v` or `gem list`

We will need Nokogiri in order to compile ruby files on this setup. Installation instructions can be found [here](https://nokogiri.org/tutorials/installing_nokogiri.html#installing-the-ruby-platform-gem).
From here, you can install Rails with `gem install rails` if you wish.

*NOTE:* In order to view the repository from the Linux subsystem terminal, you will need to cd into `cd /mnt/<filepath_from_drive_name>`



#### RVM, Repo, and Bundler

RVM is a gem manager that can be used to manage different versions of ruby on one machine. If you wish to install this, instructions can be found [here](https://github.com/rvm/ubuntu_rvm).

Then, fork and clone the repo onto your github account.

Bundler is required in order to ensure you have the correct gem versions:
`gem install bundler:2.1.4`

Once bundler is installed, you can install the gems from the gemfile using `bundle install`
NOTE: be sure to rerun `bundle install` every time there is a gem version update or a new gem is added.


#### Choose IDE
For this project, I used RubyMine with the following plugins, but any IDE will suffice:
- GitToolBox
- Selenium UI Testing

#### Confirming Chromedriver Installation

At this point, Bundlers should have handled the installation for chromedriver. However, if any issues arise when trying to run a file, you may have [to define the path
to the chromedriver.](https://sites.google.com/chromium.org/driver/getting-started?authuser=0)

### Running Tests
Once all installation is complete, tests can be run using the command: `cucumber <path>/<to>/<file>.feature`