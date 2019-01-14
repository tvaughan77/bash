# Upside settings
export UPSIDE_MAVEN_USER=tvaughan

# Downloaded from https://www.terraform.io/downloads.html 
# My original installation; I since switched to `brew install terraform` so it's at /usr/local/bin/terraform
# and /usr/local/bin is already in my path (obviously)
#export PATH=$PATH:/Users/tvaughan/workspace/terraform

# This is for kubectl to manage EKS clusters
export PATH=$PATH:/Users/tvaughan/workspace/aws-iam-authenticator

export UPSIDE_BASH_UTILS="/Users/tvaughan/workspace/upside/bash-utils"

export TF_VAR_region="us-east-1"
export TERRAFORM_CONFIG_LOCAL_REPO="/Users/tvaughan/workspace/upside/aws-config-terraform"

alias gw="ssh bastion"
alias bastion="ssh bastion"
alias tf="terragrunt"

function rup {
    sudo pip install runbookcli --upgrade
}

function gup {
    sudo pip install getupsidecli --upgrade
}

function rgub {
    if [ -z ${1+x} ]; then 
        echo "Usage: rgub <user_uuid>";
    else
        getupside account.get_balance prod $1
    fi
}

function roh {
    if [ -z ${1+x} ]; then
        echo "Usage: roh <user_uuid>";
    else
        getupside support.offer_history -t prod -u $1 | pbcopy;
    fi
}

function rcoh {
    if [ -z ${1+x} ]; then 
        echo "Usage: rcoh <user_uuid>";
    else
        getupside account.cash_out_history $1
    fi
}

function rgu {
    if [ -z ${1+x} ]; then
        echo "Usage: rgu <user_uuid or email address>";
    else
        getupside support.get_user prod $1 | tee >(sed -n 2p | awk '{print $2}' | tr -d '[:space:]' | pbcopy)
    fi
}

function rlucb {
    if [ -z ${1+x} ]; then 
        echo "Usage: rlucb <user_uuid>";
    else
        runbook list_user_credit_balance -u $1
    fi
}


function rgs {
    if [ -z ${1+x} ]; then 
        echo "Usage: rsu <site_uuid>";
    else
        runbook get_site prod $1;
    fi
}

function rdu {
    if [ -z ${1+x} ]; then 
        echo "Usage: rdu <user_uuid> <comment>";
    else
        getupside account.delete_user -t prod -u $1 -c '$2'
    fi
}

function rlh { 
    if [ -z ${1+x} ]; then
        echo "Usage: rlh <user_uuid>";
    else
        getupside account.ledger_history -t prod -a $1 | pbcopy;
    fi
}

# Runbook manual stored value transfer
rmsv () 
{ 
    if [ -z ${1+x} ]; then
        echo "Usage: rmsv <user_uuid> <site_uuid> <amount> '<Comment / ZD Ticket reference>'";
    else
        runbook give_credit -t prod -u $1 -s $2 -a -$3;
        runbook bonus_user -t prod -u $1 -a $3 -n '$4';
    fi
}

function rlor {
    if [ -z ${1+x} ]; then 
        echo "Usage: rlor <offer_uuid>";
    else
        getupside support.lost_offers prod remove $1;
    fi
}

function rao {
    if [ -z ${1+x} ]; then 
        echo "Usage: rao <user_uuid> <offer_uuid>";
    else
        runbook abandon_offer prod $1 $2;
    fi
}

function bakesvc {
    if [ $# -ne 2 ]; then
        echo "Usage: bakesvc <service> <version>"
    else
        upside service bakery -s $1 -t v$2 
    fi
}

function updatesvc {
    if [ $# -ne 3 ]; then
        echo "Usage: updatesvc <service> <version no leading v> <tier>"
    else
        upside service update2 -s $1 -v $2 -t $3
    fi
}

function newsvcversion {
    if [ $# -ne 1 ]; then
        echo "Usage: newsvcversion <service>"
    else
        upside service.new_version -s $1
    fi
}

function tmysql {
    local socket=$(ps aux | grep mysql-test-rule | grep -v grep | sed 's/.*--socket=\(.*\/socket\).*/\1/')
    local port=$(ps aux | grep mysql-test-rule | grep -v grep | sed 's/.*--port=\([0-9][0-9]*\).*/\1/')
    mysql -h localhost -P $port -u test --socket $socket service -p
}

