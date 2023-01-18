# Task-02


1)Create a new project in the Google Cloud Console and enable the Compute Engine and Cloud SQL APIs.<br>
Project name -TodoApp <br>
Project ID -todoapp-375114<br>
enable API's - Compute Engine API and Cloud SQL API <br>
2)Create a new service account with the role of "Project Editor" under the IAM & admin section.<br>
3)Download the JSON key file for the service account and store it in a safe location.<br>
4)Install Terraform on your local machine.<br>
5)Create a new directory for your Terraform project and initialize it using "terraform init".<br>
6)Create a new file called "main.tf" in the project directory and add the necessary Terraform configuration code to it. This code should include<br>
 the creation of a Compute Engine instance and a Cloud SQL instance.<br>
7)Run "terraform plan" to see what changes will be made to your project.<br>
8)Run "terraform apply" to apply the changes and create the resources in your Google Cloud project.<br>
9)Add the Terraform files to a new Github repository and push the changes.<br>

<br>

Terraform commands used

A)terraform init: This command initializes a Terraform working directory, and downloads the necessary provider plugins. <br>
	It should be run the first time you set up a new Terraform project, and whenever you make changes to the provider configuration.<br>

B)terraform plan: This command shows you a preview of the changes that will be made to your infrastructure when you run terraform apply. <br>
	It's a good idea to run this command before making any changes to your infrastructure, to ensure that you understand the impact of the changes.<br>

C)terraform apply: This command is used to apply the changes described in the Terraform configuration to your infrastructure.<br>
	 It creates or updates the specified resources in the cloud provider.<br>

D)terraform show: This command is used to display the current state of the resources that Terraform is managing. <br>
	It shows the current state of the resources and their properties.<br>

E)terraform destroy: This command is used to destroy the resources that Terraform is managing. It deletes the <br>
	resources created by Terraform from the cloud provider.<br>

F)terraform output: This command is used to extract the output variables of the Terraform script. <br>
	It can be useful to get the necessary information such as IP address, DNS name, etc.<br>
