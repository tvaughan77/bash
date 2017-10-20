# Upside settings
export UPSIDE_MAVEN_USER=tvaughan

# shell out to our gateway server
alias gw="ssh -i ~/.ssh/upside-us-east-1-gateway-20170131.pem ec2-user@ec2-54-208-64-212.compute-1.amazonaws.com"

function rup {
    sudo pip install runbookcli --upgrade
}

function rgub {
    if [ -z ${1+x} ]; then 
        echo "Usage: rgub <user_uuid>";
    else
        runbook account_balance prod get $1;
    fi
}

function roh {
    if [ -z ${1+x} ]; then 
        echo "Usage: roh <user_uuid>";
    else
        runbook offer_history $1 all receipts prod 2000-01-01T00:00:00Z 20 | pbcopy;
    fi
}

function rohall {
    if [ -z ${1+x} ]; then 
        echo "Usage: roh <user_uuid>";
    else
        runbook offer_history $1 all receipts | pbcopy;
    fi
}

function rcoh {
    if [ -z ${1+x} ]; then 
        echo "Usage: rcoh <user_uuid>";
    else
        runbook cash_out_history $1
    fi
}

function rgu {
    if [ -z ${1+x} ]; then 
        echo "Usage: rgu <user_uuid or email address>";
    else
        runbook get_user prod $1;
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
        echo "Usage: rdu <user_uuid>";
    else
        runbook delete_user -t prod -u $1;
    fi
}

function rlh {
    if [ -z ${1+x} ]; then 
        echo "Usage: rlh <user_uuid>";
    else
        runbook ledger_history -t prod -u $1 | pbcopy;
    fi
}

function bake {
    if [ $# -ne 2 ]; then
        echo "Usage: bake <service> <version>"
    else
        upside service bakery -s $1 -t v$2 -i ami-17227001
    fi
}

function tmysql {
    local socket=$(ps aux | grep mysql-test-rule | grep -v grep | sed 's/.*--socket=\(.*\/socket\).*/\1/')
    local port=$(ps aux | grep mysql-test-rule | grep -v grep | sed 's/.*--port=\([0-9][0-9]*\).*/\1/')
    mysql -h localhost -P $port -u test --socket $socket service -p
}

