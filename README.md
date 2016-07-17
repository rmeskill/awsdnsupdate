# awsdnsupdate
Auto-Updater for DNS

1) Install AWS CLI tools
  sudo apt-get install python2.7
  curl -O https://bootstrap.pypa.io/get-pip.py
  sudo python27 get-pip.py
  pip install awscli

2) Modify git files to point at the correct hosted zone and URL

3) In IAM in AWS create a new user and make note of credentials

4) Run aws configure and enter credentials and region name (eu-west-1) and output format (text)

5) Attach the following policies to user in AWS:
  AmazonEC2FullAccess
  AmazonRoute53DomainsFullAccess
  AmazonRoute53FullAccess

No Updates?
