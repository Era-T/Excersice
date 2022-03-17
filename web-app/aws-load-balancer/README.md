1. Create policy

        aws iam create-policy \
        --policy-name AWSLoadBalancerControllerIAMPolicy \
        --policy-document file://iam_policy.
        
2. 
        aws eks describe-cluster --name appstellar-devops-training --query "cluster.identity.oidc.issuer" --output text

3. 
        aws iam create-role \
        --role-name AmazonEKSLoadBalancerControllerRole \
        --assume-role-policy-document file://"load-balancer-role-trust-policy.json"

4. 
        aws iam attach-role-policy \
        --policy-arn arn:aws:iam::313422618945:policy/AWSLoadBalancerControllerIAMPolicy \
        --role-name AmazonEKSLoadBalancerControllerRole


5. 
        helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
            -n kube-system \
            --set clusterName=appstellar-devops-training \
            --set serviceAccount.create=false \
            --set serviceAccount.name=aws-load-balancer-controller 