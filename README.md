# Clubhouse Cookbook

When using an [Elastic Cloud Compute (EC2)](https://aws.amazon.com/ec2/)
    instance hosted by [Amazon Web Services](https://aws.amazon.com/)
    and managed via [OpsWorks](https://aws.amazon.com/opsworks/)
    to demonstrate concepts of
     computer networks, protocols, hardware, software, and cloud computing:
use this custom [Chef](https://www.chef.io/chef/) "cookbook" to
 automate server configuration and administration tasks.

The production server name, "Clubhouse", is an instructional analogy.

## Usage

To administer the production AWS EC2 server,
 follow the [production instructions](PRODUCTION.md).

## Contributing

To develop and test features on a local virtual machine,
  consult the [development instructions](DEVELOPMENT.md).

## Features

This cookbook performs or enables the following server administration and configuration tasks:

  - [x] Create a home directory for each member, as represented by their GW `net_id`.
  - [x] Create in the home directory of each member a text file with unique content.
  - [ ] Send an email to each member on a recurring basis (over SMTP).
  - [x] Allow access by each member to his/her home directory (over SSH on port 22).
  - [ ] Allow shared database access for all members (over SSH on port 3306).
  - [ ] Host a static html site (over HTTPS on port 80).
  - [ ] Host a static html site for each member (over HTTPS on port 80).

## [License](LICENSE.md)
