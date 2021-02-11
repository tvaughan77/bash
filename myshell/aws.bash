# Function to authenticate with AWS SSO in order to use AWS CLI and run terraform commands
function awslogin {
    aws sso login --profile master
}

# Function to logout from all AWS accounts
function awslogout {
    aws sso logout
    echo "Successfully logged out of AWS"
}

# Function to setup your shell to manage the AWS "root" account (#337068080576)
function masterSetupTF {
    eval "$(aws2-wrap --profile master --export)"
    export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
    export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
    export TERRAFORM_REMOTE_STATE_BUCKET="aws-config.terraform.upside-services.com"
    export AWS_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
    export AWS_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
    export AWS_REGION="us-east-1"
    export awsRegion="us-east-1"
    export AWS_DEFAULT_REGION="us-east-1"
    aws sts get-caller-identity
}

# Function to setup your shell to manage the AWS "dev" account (#870500194756)
function devSetupTF {
    eval "$(aws2-wrap --profile dev --export)"
    export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
    export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
    export TERRAFORM_REMOTE_STATE_BUCKET="dev-aws-config.terraform.upside-services.com"
    export AWS_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
    export AWS_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
    export AWS_REGION="us-east-1"
    export awsRegion="us-east-1"
    export AWS_DEFAULT_REGION="us-east-1"
    aws sts get-caller-identity
}

# Function to setup your shell to manage the AWS "alpha" account (#614570102532)
function alphaSetupTF {
    eval "$(aws2-wrap --profile alpha --export)"
    export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
    export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
    export TERRAFORM_REMOTE_STATE_BUCKET="terraform.alpha.upside-services.com"
    export AWS_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
    export AWS_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
    export AWS_REGION="us-east-1"
    export awsRegion="us-east-1"
    export AWS_DEFAULT_REGION="us-east-1"
    aws sts get-caller-identity
}

# Function to setup your shell to manage the AWS "sandbox" account (#772633047275)
function sandboxSetupTF {
    eval "$(aws2-wrap --profile sandbox --export)"
    export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
    export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
    export TERRAFORM_REMOTE_STATE_BUCKET="<to be created>"
    export AWS_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
    export AWS_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
    export AWS_REGION="us-east-1"
    export awsRegion="us-east-1"
    export AWS_DEFAULT_REGION="us-east-1"
    aws sts get-caller-identity
}

# Function to setup your shell to manage the AWS "performance" account (#908232059435)
function performanceSetupTF {
    eval "$(aws2-wrap --profile performance --export)"
    export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
    export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
    export TERRAFORM_REMOTE_STATE_BUCKET="<to be created>"
    export AWS_ACCESS_KEY=${AWS_ACCESS_KEY_ID}
    export AWS_SECRET_KEY=${AWS_SECRET_ACCESS_KEY}
    export AWS_REGION="us-east-1"
    export awsRegion="us-east-1"
    export AWS_DEFAULT_REGION="us-east-1"
    aws sts get-caller-identity
}
