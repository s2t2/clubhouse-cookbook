# Server Administration Application

As an Instructor,
when demonstrating concepts of
  computer networks, protocols, hardware, software, and cloud computing:
use this server administration application to
 automate server configuration and administration tasks.

This application can configure a remote server or a local virtual machine.

The intended remote production server is an [Elastic Cloud Compute (EC2)](https://aws.amazon.com/ec2/)
  instance hosted by [Amazon Web Services](https://aws.amazon.com/)
  and managed via [OpsWorks](https://aws.amazon.com/opsworks/).

To administer the production server,
 follow the [production instructions](PRODUCTION.md).

To contribute new features or bug fixes or documentation improvements,
  consult the [development instructions](DEVELOPMENT.md).





<hr>

## Features Roadmap

 1. Create a home directory for each member, as represented by their GW `net_id`.
 * Create in the home directory of each member a text file with unique content.
 * Send an email to each member on a recurring basis (over SMTP).
 * Allow access by each member to his/her home directory (over SSH on port 22).
 * Allow shared database access for all members (over SSH on port 3306).
 * Host a static html site (over HTTPS on port 80).
 * Host a static html site for each member (over HTTPS on port 80).
