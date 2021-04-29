# Amazon Web Services (AWS)

https://aws.amazon.com/

## Account Info

Free Tier: https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=categories%23featured


## Tutorials

* https://mraess.netlify.com/2018/06/setting-up-an-aws-ec2-instance-with-rstudio-server-and-tensorflow-gpu/

### Limit increase
* Be sure you ask for a limit increase in the correct region. Should be US West (Oregon), regardless if you chose US West (Northern California - which is probably the bay area which is NOT norcal) for.... [this other thing]

### Setup step 4
> Leave everything else as is except you can create your own security group and you will be asked to supply a Key-Pair, which you can create at this point by clicking on the link right below the text box.


This section may pre-populate with VPC options (looks like vpc-c######). 
If not then click the link to "Create a VPC in EC2"

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#having-ec2-create-your-key-pair

Notes:

* key pairs are specific to a region AND an instance
* name it whatever you want - probably smart to name it according to the project and region
* This downloads a `.pem` file. I put mine in the github repo _BUT_ added `*.pem` to the `.gitingore` file so it is not under version control and will not be uploaded to github. 

**IMPORTANT** your keypair is connected to your instance. So if you want to log into this instance from a different computer you must bring your keypair with you. 

**IMPORTANT** You cannot download your private key again, and it is linked to your instance. If you loose this keypair you might as well expect to trash and rebuild your instance.

If using PuTTY - you have to convert the `.pem` key file to a `.ppk` key file.   https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html?icmpid=docs_ec2_console 


## Enable Inbound Traffic to Your Instance

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/authorizing-access-to-an-instance.html

1. Go to EC2 dashboard --> Network & Security --> Security groups. 
2. Click on the `Inbound` security group, then `Edit`
3. `Add Rule`, Type = SSH, Source = Anywhere
4. `Add Rule`, Type = Custom TCP Rule, Port=8787, Source=Anywhere. Give this one a name like "rstudio server"
5. Save



## Connect to your instance

Go to your instance and select 'connect' It will open a window that shows your Public DNS. 

### Connect via PuTTY (windows)
    - Session tab: Host name = `ubuntu@<DNS name here>`
    - Port should be set to `22`
    - Auth: select your private key here
    
## Connect via terminal 

Type the ssh command that it shows in that window (except with `ubuntu` as the username) 


## Connect to R Studio Server

1. Open a browser window and paste the DNS name into the bar with port `:8787` at the end
2. Login using `rstudio-user` as the user name, and the instance ID as the password
    - This is found in your instance description. When you hover over the word a little 'copy' icon will pop up for you to click to easily copy the id. 
3. Go to the terminal tab and type `passwd`. You will be prompted to change your password. 


# Stopping instances to save $$

https://aws.amazon.com/ec2/pricing/on-demand/

> On-Demand instances let you pay for compute capacity by the hour or second (minimum of 60 seconds) with no long-term commitments.

> Pricing is per instance-hour consumed for each instance, from the time an instance is launched until it is terminated or stopped. Each partial instance-hour consumed will be billed per-second for Linux Instances and as a full hour for all other instance types.

* Data transfer in - free
* Data transfer out - Free up to 1G/month



=======

Vocabulary

* **VPC**: Virtual Private Cloud
* **EC2**: Amazon Elastic Compute Cloud (scalable computing capacity)
* **Subnet**: short for subnetwork. Logical division of an IP network. 
* **kepair**: A digital certificate that is presented as a pair of cryptographic keys. One public and one private.

=======


# Amazon Rekognition

> Amazon Rekognition makes it easy to add image and video analysis to your applications. You just provide an image or video to the Rekognition API, and the service can identify the objects, people, text, scenes, and activities, as well as detect any inappropriate content 

https://aws.amazon.com/rekognition/?c=14&pt=8

## Cost

* AWS Free tier: 5000 images per month

> Q: Do I need any deep learning expertise to use Amazon Rekognition?
> 
> No. With Amazon Rekognition, you don't have to build, maintain or upgrade deep learning pipelines.
> 
> To achieve accurate results on complex computer vision tasks such as object and scene detection, face analysis, and face recognition, deep learning systems need to be tuned properly and trained with massive amounts of labeled ground truth data. 



