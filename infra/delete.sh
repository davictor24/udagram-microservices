STACK_NAME=k8s-cluster-udagram
REGION=us-east-2

echo "Deleting stack..."
aws cloudformation delete-stack --stack-name $STACK_NAME --region=$REGION