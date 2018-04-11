# Spot instance Kylo sandbox on AWS

Install [Terraform](https://www.terraform.io/downloads.html)

## Set AWS credentials / profile

This is probably already configured if you are using the AWS CLI.
Insert your AWS credentials in ```~/.aws/credentials```
Make sure to set the profile name you want to use for the Kylo sandbox in ```variable.tf```.

## Generate ssh keys for the AWS instance

Required to be done only once.
Store the keys in ```~/.ssh/kylo-sandbox```

```
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

## Spin up instance

Spot instance is used...  update bid price in ```variable.tf``` if needed.

```
terraform init
terraform apply
```

## SSH to instance

```ssh -i ~/.ssh/kylo-sandbox centos@[PUBLIC_IP]```

## Destroy everything

```
terraform destroy
```