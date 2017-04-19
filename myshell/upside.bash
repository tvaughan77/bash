# Upside settings
export UPSIDE_MAVEN_USER=tvaughan

# shell out to our gateway server
alias gw="ssh -i ~/.ssh/upside-us-east-1-gateway-20170131.pem ec2-user@ec2-54-208-64-212.compute-1.amazonaws.com"

function roh {
    if [ -z ${1+x} ]; then 
        echo "Usage: roh <user_uuid>";
    else
        runbook offer_history $1 all receipts | pbcopy;
    fi
}

function rgu {
    if [ -z ${1+x} ]; then 
        echo "Usage: rgu <user_uuid or email address>";
    else
        runbook get_user prod $1;
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
        echo "Usage: rdu <user_uuid>";
    else
        runbook delete_user -t prod -u $1;
    fi
}

function bake {
    if [ $# -ne 2 ]; then
        echo "Usage: bake <service> <version>"
    else
        upside service bakery -s $1 -t v$2 -i ami-fbd7dbec
    fi
}
