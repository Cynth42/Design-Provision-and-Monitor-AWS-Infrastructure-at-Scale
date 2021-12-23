# Udacity AWS Cloud Cloud Architect Nanodegree Project 2: Design for Performance and Scalability

## Project  Instructions:
Plan, design, provision,and monitor infrastructure in AWS using industry-standard and open source tools. Practice the skills you have learned throughout the course to optimize infrastructure for cost and performance. Use Terraform to provision and configure AWS services in a global configuration.

---

Installed the required tooling for this project:

1. AWS CLI
2. Terraform

### Exercise 1

1. Download the [starter code](https://github.com/udacity/cand-c2-project).
2. In the main.tf file write the code to provision
   * AWS as the cloud provider
   * Use an existing VPC ID
   * Use an existing public subnet
   * 4 AWS t2.micro EC2 instances named Udacity T2
   * 2 m4.large EC2 instances named Udacity M4
3. Run Terraform. 
4. Take a screenshot of the 6 EC2 instances in the AWS console and save it as `Terraform_1_1`. 
5. Use Terraform to  delete the 2 m4.large instances 
6. Take an updated screenshot of the AWS console showing only the 4 t2.micro instances and save it as `Terraform_1_2`

### Exercise 2

1. In the  Exercise_2 folder, write the code to deploy an AWS Lambda Function using Terraform. Your code should include:

   * A lambda.py file
   * A main.tf file with AWS as the provider, and IAM role for Lambda, a VPC, and a public subnet
   * An outputs.tf file
   * A variables.tf file with an AWS region
  
2. Take a screenshot of the EC2 instances page
3. Take a screenshot of the VPC page 

### TasK 1 Create AWS Architecture Schematics

* Cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users: Diagram 1. 

* SERVERLESS architecture schematic for a new application development project: Diagram 2

### Task 2 Calculate Infrastructure Costs
Use the AWS Pricing Calculator to estimate how much it will cost to run the services for one month.
* Initial Cost Estimate
* Reduced Cost Estimate
* Increased Cost Estimate

### Task 5 Use Terraform to Provision AWS Infrastructure
Screenshots of the provisioned AWS Infrasructure:
* 6 EC2 instances in the AWS console. Saved as Terraform_1_1.png
* Use Terraform to delete the 2 m4.large instances: 4 t2.micro instances saved as Terraform_1_2.png 
* Write the code to deploy an AWS Lambda Function using Terraform take a screenshot of EC2 instances page and saved as Terraform_2_1.png
* VPC page and saved it as Terraform_2_2.png
* CloudWatch log entry for the lambda function execution and save it as Terraform_2_3.png

### Task 6: Destroy the Infrastructure using Terraform 
Destroy all running provisioned infrastructure using Terraform so as not to incur unwanted charges. 
Screenshot of the EC2 instances saved as Terraform_destroyed.png


