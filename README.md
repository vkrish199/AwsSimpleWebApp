1. This application is deployed to AWS using elastic beanstalk
2. Here are the steps needed :
    A. Create an AWS free tier account
    B. Create an IAM user
    C. Go to Elastic Beanstalk service
    D. Create necessary roles needed for Elastic beanstalk services and EC2 services
    E. Upload the JAR file that is packaged using Maven (mvn package) - target/simple-web-app-aws.jar
    F. The service will give a domain endpoint to access the app