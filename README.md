1. This application is deployed to AWS using elastic beanstalk
2. Here are the steps needed :
    A. Create an AWS free tier account
    B. Create an IAM user
    C. Go to Elastic Beanstalk service
    D. Create necessary roles needed for Elastic beanstalk services and EC2 services
    E. Upload the JAR file that is packaged using Maven (mvn package) - target/simple-web-app-aws.jar
    F. The service will give a domain endpoint to access the app
3. To deploy a project with Database, we can make use of aws RDS
4. Create an RDS database on aws, and it will generate a public URL of RDS
   and use that database URL in the application
5. Once the application able to use the RDS instance for DB, the app deployment
    steps using elastic beanstalk is same as above
6. ECS (Elastic container service):
    A. In our application we have java code and a database
    B. We need 2 containers for this, 1 for app and 1 for DB
    C. We have to create images for java project and the postgres to run on containers
    D. The images can be put on an ECR(Elastic container registry)
    E. To push the image from local to ECR we need to user AWS CLI
    F. We also need docker file create image and containerize
7. Configuring AWS CLI:
    A. From IAM go to users, select the user that was created in 2B
    B. Generate an access key for that user for aws cli use
    C. Download aws cli in the machine
    D. Use: aws configure to add the user
    E. We should be good to go
8. We first have to create a cluster in aws ECS - Use Fargate (serverless) and create
9. In the cluster we have to define task in task definitions
10. Mention a postgres container and give an image URI 
    (we can use public image available) - user 5432 as port
11. Make sure to add ENV variables (for db , username and password) - 
    POSTGRES_DB, POSTGRES_USER, POSTGRES_PASSWORD
12. Run the task in the cluster
13. Select launch type and family
14. Create a security group and define the rules
15. Now the task for DB is running in the container created in ECS - 
    It will have a public IP which we can connect to from anywhere
16. Now create a docker Image and push it to ECR:
    A. Go to ECR in aws
    B. Create a new repository
    C. Make it private and give the needed name
    D. It gives push commands needed to push the jar from local to ECR
    E. Execute all the commands to successfully push image to ECR 
       (basically docker build docker tag and docker push )
17. Now the image pushed to ECR will have a URI
18. Now in ECS we were already running a task for database, now we need to run 
    one more task for the App image (by mentioning URI of ECR image), 
    and we are good to go