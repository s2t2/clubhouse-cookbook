# Club House

The Club House is a "cloud" computer which demonstrates concepts of
  computer networks,
  protocols,
  hardware,
  and software.

In this case, the computer is an [Elastic Cloud Compute (EC2)](https://aws.amazon.com/ec2/)
 server hosted by [Amazon Web Services](https://aws.amazon.com/).

## Features

1. Creates a home directory for each member, as represented by their GW `net_id`.

* Creates in the home directory of each member a text file with unique content.

* Sends an email to each member on a recurring basis (over SMTP).

* Allows access by each member to his/her home directory (over SSH on port 22).

* Allows shared database access for all members (over SSH on port 3306).

* Hosts a static html site (over HTTPS on port 80).

* Hosts a static html site for each member (over HTTPS on port 80).
