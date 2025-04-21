#!/bin/bash
AWS_REGION="ap-southeast-1"
IMAGE_NAME="template-repository"
TAG="latest"

ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
ECR_URI="${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${IMAGE_NAME}"

echo "🛰 Logging into ECR..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URI

echo "🐳 Building Docker image..."
docker build -t $IMAGE_NAME ..

echo "🔖 Tagging image..."
docker tag ${IMAGE_NAME}:${TAG} ${ECR_URI}:${TAG}

echo "🚀 Pushing image to ECR..."
docker push ${ECR_URI}:${TAG}

echo "✅ Done! Image available at: ${ECR_URI}:${TAG}"
