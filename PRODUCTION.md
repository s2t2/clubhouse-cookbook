# Administration

Obtain the private key associated with the production server (e.g. "gwu-business-1.pem").
 Note the server's Public IP address (e.g. 54.173.219.67).

Log-in to the server:

```` sh
# as an instructor:
ssh ec2-user@54.173.219.67 -i ~/.ssh/gwu-business-1.pem

# as a student:
ssh sammy_student@54.173.219.67 -i ~/.ssh/gw_id_rsa.pub
````

To deploy or re-deploy,
 run the "Setup" command
  from the AWS "Stack" > "Run Command" menu.
  Before deploying, copy and paste the contents of [`opsworks.json`](clubhouse/attributes/opsworks.json)
   into the "Custom Chef JSON" text box.

If the cookbook changes, run the "Update Custom Cookbooks" command
 before performing the next "Setup" command.










## AWS Prerequisites

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
 and specify the url of this hosted repository as the cookbook url.

Add a new "MySQL" layer
 and specify the recipe(s) to run
 during the "Setup" lifecycle event: `clubhouse::build`.

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
# ~/.ssh/config

# GWSB BADM 2301 SERVER CONFIG
Host clubhouse
  IdentityFile ~/.ssh/gwu-business-1.pem
  User ec2-user
  Hostname 54.175.53.250
````

This configuration allows server access via a more concise command:

```` sh
ssh clubhouse
````

## Adding SSH Users

Obtain the user's public key
 and add a corresponding entry
  to the "ssh_users" node attribute.
