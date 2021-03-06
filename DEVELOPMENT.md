# Development

## Installation

Clone the repository (requires git).

```` sh
git clone git@github.com:gwu-business/remote-server-opsworks-cookbook.git
cd remote-server-opsworks-cookbook/clubhouse
bundle install
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

Create a virtual machine on which to test the server deployment (convergence) process.

```` sh
kitchen list
kitchen create default-ubuntu-1404
````

Optionally inspect the virtual machine over SSH using Vagrant Manager, or:

```` sh
kitchen login default-ubuntu-1404
````

Run tests to simulate server configuration and administration tasks.

```` sh
kitchen converge default-ubuntu-1404
````
