# opsworks-chef-automate-demo

An example CloudFormation template and cookbook for OpsWorks for Chef Automate


## Contents

* `cf/vpc-webserver.yaml`
    Example cloudformation template that will setup a public facing
    Load Balancer, a Launch Configuration and Auto Scaling group that
    will create EC2 instances in a private subnet.

* `web-demo` cookbook
    Intalls apache and configures it to serve a static webpage.
