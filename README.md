## Kenot Solutions by Tolgay Gul
#### Ansible, Packer, Docker and Terraform Demo on AWS


This project combines AWS, Ansible, Packer, Docker and Terraform to show how you can
automagically script and deploy a server with no manual configuration. In case
you're unfamiliar with these 4 tools:

* [Ansible](https://www.ansible.com/) - Automates server configuration
* [Packer](https://www.packer.io/) - Builds images of a configured server, but
doesn't actually deploy it
* [Terraform](https://www.terraform.io/) - Handles deploying an actual server
* [Docker](https://www.docker.com) -  A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application

## Overview

This project creates a AWS VPC and create an instance from the golden AMI




------------
 #### - Set the variables in the .env file. : mv env-example .env 

------------
 #### - Set the variables in the .env file. At a minimum, this includes:
-  aws_access_key=
-  aws_secret_key=

------------

#### Set the variables in the .envaws file. At a minimum, this includes:
-  aws_access_key=
-  aws_secret_key=

------------

## make packer-build

 This will take about 5-10 minutes to create a new Golden AMI from Centos 7 build-in AMI. This Golden AMI will use in terraform.


------------

## make terraform-init
Only have to do this once

------------
## make terraform-plan
<enter AMI ID from packer-build command>

If all looks good, then:

------------
## make terraform-apply
<enter AMI ID from packer-build command>
This will take about a minute

------------
>  Check the created web site from public ip address. You should see the index page

------------
## make terraform-destroy
<enter AMI ID from packer-build command>

>  Do Not Forget to destroy the demo from your aws account.

------------


### Powered by Beta Kuresel [Saglayici](http://www.saglayici.com/en).

```
