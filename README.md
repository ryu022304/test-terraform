# TEST-TERRAFORM
## Orverview
Start Apache server on AWS EC2 instance using Terraform.

## Requirements
- Terraform >= 0.14

## Usage
### Deploy
1. Create your S3 bucket
2. `git clone this repository` and `cd /path/to/repository`
3. Edit S3 bucket name in `main.tf` 
4. `terraform init`
5. `terraform apply`
6. Input your IP address

```
$ terraform apply
var.my_ip
  Enter a value: x.x.x.x


Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

~~~

Plan: 8 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_public_ip = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.test: Creating...
~~~

Apply complete! Resources: 8 added, 0 changed, 0 destroyed.

Outputs:

instance_public_ip = "y.y.y.y"

$ ssh -i /path/to/test-key.txt ec2-user@y.y.y.y
Warning: Permanently added 'y.y.y.y' (ECDSA) to the list of known hosts.

       __|  __|_  )
       _|  (     /   Amazon Linux 2 AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-2/
[ec2-user@ip-10-0-1-z ~]$ sudo systemctl status httpd
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
   Active: active (running)
~~~
```
