# Contributing

Issues and Pull Requests are welcome.

## Installation

Clone the repository (requires git).

```` sh
git clone git@github.com:gwu-business/club-house.git
cd club-house/
````

## Prerequisites

Download the [Chef DK](https://github.com/chef/chef-dk), or use [Homebrew](http://brew.sh/) to install it:

```` sh
brew install caskroom/cask/brew-cask
brew cask install chefdk
````

Download [Vagrant](http://www.vagrantup.com/downloads.html) or use Homebrew to install it:

```` sh
brew cask install vagrant
````

Optionally download [Vagrant Manager](http://vagrantmanager.com/) or use Homebrew to install it:

```` sh
brew cask install vagrant-manager
````

Download [Virtual Box](https://www.virtualbox.org/), or use Homebrew to install it:

```` sh
brew cask install virtualbox
````

## Testing

Spin-up a virtual machine on which to test the server convergence process.

```` sh
kitchen create default-ubuntu-1404
````


Run tests.

```` sh

````

Edit existing features, or add new features, and add passing test for each.
