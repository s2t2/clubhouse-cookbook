# Contributing

## Installing

Clone the repository (requires git).

```` sh
git clone git@github.com:gwu-business/club-house.git
cd club-house/
````

## Configuring

Log-in to the AWS console and navigate to the N. Virginia region.

### Elastic IP

Navigate to the "Network and Security" > "Elastic IPs" menu.

Allocate new address, or choose an existing address,
  and note its address (e.g. 52.1.85.124).

### Key Pair

Navigate to the "Network and Security" > "Key Pairs" menu.

Choose an existing key pair, or create a new key pair and witness it auto-download to your local machine (e.g. "gwu-business-1.pem").

Move the file into the .ssh directory and change file permissions.

```` sh
mv ~/Downloads/gwu-business-1.pem ~/.ssh
chmod 400 ~/.ssh/gwu-business-1.pem
````

Add the key to the SSH configuration file

```` sh
atom ~/.ssh/config
````

    # ~/.ssh/config

    CheckHostIP no
    StrictHostKeyChecking no
    ServerAliveInterval 15

    # GWU BUSINESS

    Host 52.1.85.124
    IdentityFile ~/.ssh/gwu-business-1.pem
    User ec2-user

### Server Instance

Navigate to the "Instances" > "Instances" menu.
