# Administration

Obtain the private key associated with the production server (e.g. "gwu-business-1.pem").
 Note the server's Public IP address (e.g. 54.175.53.250).

Log-in to the server:

```` sh
ssh -i ~/.ssh/gwu-business-1.pem ec2-user@54.175.53.250
````

To deploy or re-deploy,
 run the "Setup" command
  from the AWS "Stack" > "Run Command" menu.
  Before deploying, copy and paste the contents of [`opsworks.json`](clubhouse/attributes/opsworks.json)
   into the "Custom Chef JSON" text box.

If the cookbook changes, run the "Update Custom Cookbooks" command
 before performing the next "Setup" command.

## Prerequisites

Create an AWS account, log-in to the AWS console, and ensure presence of a running server.

### Key Pair

Navigate to the "Network and Security" > "Key Pairs" menu.

Choose an existing key pair,
 or create a new key pair
  and witness it auto-download to your local machine (e.g. "gwu-business-1.pem").

Move the file into the .ssh directory and change file permissions.

```` sh
mv ~/Downloads/gwu-business-1.pem ~/.ssh
chmod 400 ~/.ssh/gwu-business-1.pem
````

### Server Instance

Navigate to the "OpsWorks" service.

Create a new stack in the "N. Virginia" region using the "Amazon Linux" OS,
 and use the advanced options to "use custom chef cookbooks",
 and specify the cookbook url, "https://github.com/gwu-business/clubhouse".

Add a new "Custom" layer
 and specify the recipe(s) to run
 during the "Deploy" lifecycle event: `clubhouse::build_it`.

Add a new server instance to the stack.
 Choose "m4.large" size,
  "24/7" scaling type,
  and select the previously-generated "gwu-business-1.pem" SSH key.

Once the new instance has been created,
 click "start"
 and wait a few moments until the instance status changes from "booting" to "running".

This will trigger a number of lifecycle events, including the "Deploy" event,
 which should in turn trigger execution of custom cookbook recipe(s).

Note the server's Public IP address (e.g. 54.175.53.250).

## Configuration

Optionally use a text editor to add an entry to the SSH configuration file
 to specify the credentials to use when logging in to the server.

```` sh
atom ~/.ssh/config
````

    # ~/.ssh/config

    Host clubhouse
    IdentityFile ~/.ssh/gwu-business-1.pem
    User ec2-user
    Hostname 54.175.53.250

This configuration allows server access via a more concise command:

```` sh
ssh clubhouse
````

## Adding SSH Users

Add new JSON entries to [`opsworks.json`](clubhouse/attributes/opsworks.json).
 Entry names must be numeric else opsworks will yield a `useradd` error.

If the user does not have a public key, [instruct the user to generate one](https://github.com/gwu-business/badm-2301/blob/master/assignments/lab/networks-and-protocols.md#generating-a-key-pair).

Adjust file permissions.

```` sh
chmod 400 gw_id_rsa
chmod 400 gw_id_rsa.pub
ssh-add ~/.ssh/gw_id_rsa
````

Instruct the user to login:

```` sh
ssh -i ~/.ssh/gw_id_rsa.pub my_net_id@54.175.4.118
````
