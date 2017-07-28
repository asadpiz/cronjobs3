cronuploads3

Create S3 bucket and assign appropriate permissions

Install AWS CLI: http://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux.html

aws configure

create cron job: crontab -e
00 23 * * * /home/ec2-user/upload_S3.sh >> /home/ec2-user/output 2>&1


