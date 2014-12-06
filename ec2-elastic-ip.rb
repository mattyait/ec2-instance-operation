#!/usr/bin/env ruby
require "aws-sdk"
ec2 = AWS::EC2.new(:access_key_id => "#{aws_access_key_id}",:secret_access_key => "#{aws_secret_access_key}")
instance = ec2.instances["#{instanceid}"]
if instance.has_elastic_ip?
  instance.elastic_ip
end
