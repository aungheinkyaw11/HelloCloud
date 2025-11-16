# AWS IAC CloudFormation Getting Started

Status: Done
Tags: AWS, Cloudformation, IAC

---

## Objective

Understand the basic structure of a CloudFormation template and practice provisioning an EC2 instance by creating, updating, and deleting a CloudFormation stack using the AWS CLI.

---

## CloudFormation Anatomy

Link :  [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)

The Resources section is a required top-level section in a CloudFormation template. It declares the AWS resources that you want CloudFormation to provision and configure as part of your stack.

```bash
AWSTemplateFormatVersion: '2010-09-09'
Resources:
  LogicalResourceName1: #change here
    Type: AWS::ServiceName::ResourceType. #change here
    Properties:
      PropertyName1: PropertyValue1 #change here
```

---

## AWS Resource and types reference

Link : [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)

---

## Creating AWS EC2

Link : [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html)

- I already created KeyPair.

`public-instance-1.yaml`

```bash
AWSTemplateFormatVersion: '2010-09-09'
Resources:
  publicinstance1: 
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0cae6d6fe6048ca2c # Amazon Linux 2023 AMI
      InstanceType: t2.micro
      KeyName: zane 
```

---

## Execute Cloudformation command

Link : [https://docs.aws.amazon.com/cli/latest/reference/cloudformation/](https://docs.aws.amazon.com/cli/latest/reference/cloudformation/)

`public-instance-1.yaml`

```bash
aws cloudformation create-stack \
  --stack-name publicinstance1 \
  --template-body file://public-instance-1.yaml \
  --profile cloudlab-master \
  --region us-east-1
```

- After we created, we found aws arn.

```bash
{
    "StackId": "arn:aws:cloudformation:us-east-1:822961100168:stack/publicinstance1/ca9d98e0-c255-11f0-867b-12517241f707"
}
```

- Let’s check in aws cloudformation UI.

![image.png](AWS%20IAC%20CloudFormation%20Getting%20Started/image.png)

![image.png](AWS%20IAC%20CloudFormation%20Getting%20Started/image%201.png)

---

## Update cloudformation stack

link : [https://docs.aws.amazon.com/cli/latest/reference/cloudformation/update-stack.html](https://docs.aws.amazon.com/cli/latest/reference/cloudformation/update-stack.html)

- Add tags Name and update the stack

`public-instance-1.yaml`

```bash
AWSTemplateFormatVersion: '2010-09-09'
Resources:
  publicinstance1: 
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0cae6d6fe6048ca2c # Amazon Linux 2023 AMI
      InstanceType: t3.micro
      KeyName: zane
      Tags:
        - Key: Name
          Value: PublicInstance1
        - Key: Regions
          Value: us-east-1
      
```

```bash
aws cloudformation update-stack --stack-name publicinstance1 \
--template-body file://public-instance-1.yaml \
--profile cloudlab-master --region us-east-1
```

![image.png](AWS%20IAC%20CloudFormation%20Getting%20Started/image%202.png)

![image.png](AWS%20IAC%20CloudFormation%20Getting%20Started/image%203.png)

---

## Delete cloudformation stack

link : [https://docs.aws.amazon.com/cli/latest/reference/cloudformation/delete-stack.html](https://docs.aws.amazon.com/cli/latest/reference/cloudformation/delete-stack.html)

- now we will delete publicInstance1

```bash
aws cloudformation delete-stack --stack-name publicinstance1 \
--profile cloudlab-master --region us-east-1
```

![Untitled](AWS%20IAC%20CloudFormation%20Getting%20Started/Untitled.png)