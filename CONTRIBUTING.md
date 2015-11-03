# Contributing

Issues and Pull Requests are welcome.

## Installation

Clone the repository (requires git).

```` sh
git clone git@github.com:gwu-business/clubhouse-cookbook.git
cd clubhouse-cookbook/clubhouse
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

Spin-up a virtual machine on which to test the convergence process.

```` sh
kitchen create default-ubuntu-1404
````

Run tests (converge the node).

```` sh
kitchen converge default-ubuntu-1404
````

Optionally inspect the virtual machine over SSH using the Vagrant Manager, or:

```` sh
kitchen login default-ubuntu-1404
````

Edit existing features, or add new features, and add passing test(s) for each.
