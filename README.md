# Club House OpsWorks Cookbook

This repository contains a [Chef](https://www.chef.io/chef/) cookbook of recipes
 to configure, launch, and administer a server called the 'Club House'.

The server is an [Elastic Cloud Compute (EC2)](https://aws.amazon.com/ec2/)
 instance hosted by [Amazon Web Services](https://aws.amazon.com/)
 and managed via [OpsWorks](https://aws.amazon.com/opsworks/).

The server is used for instructional purposes to demonstrate concepts of
 computer networks, protocols, hardware, software, and cloud computing.

## Features

 1. Creates a home directory for each member, as represented by their GW `net_id`.

 * Creates in the home directory of each member a text file with unique content.

 * Sends an email to each member on a recurring basis (over SMTP).

 * Allows access by each member to his/her home directory (over SSH on port 22).

 * Allows shared database access for all members (over SSH on port 3306).

 * Hosts a static html site (over HTTPS on port 80).

 * Hosts a static html site for each member (over HTTPS on port 80).

## [Administration](ADMINISTRATION.md)

## [Contributing](CONTRIBUTING.md)
