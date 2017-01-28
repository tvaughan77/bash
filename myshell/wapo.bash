#
# parallels-boot2docker variables
#
export DOCKER_HOST="tcp://boot2docker:2375"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/
export VAGRANT_DEFAULT_PROVIDER=parallels
export workspace=~/workspace
export GOPATH=$workspace/go
export PATH=$JAVA_HOME/bin:$PATH:/Users/vaughant/workspace/go/src/github.com/coreos/fleet/bin/:/Users/vaughant/workspace/go/bin

alias vpn='sudo openconnect --user vaughant --juniper https://ra.washpost.com'

export ct="Content-Type: application/json"
function asaLocal() {
  cd $workspace/arc-story-api
  export server="http://`docker-machine ip default`:8080"
  export auth=`head -n 1 arc-story-api-server/src/main/resources/allowed-peers.properties  | tr '=' ':'`
  echo "export xat='X-Auth-Token: foo'"
  echo "curl -vvv -u \"$auth\" -H \"$ct\" -H \"$xat\" $server/api/v1/story"
}

function asaAlpha() {
  cd $workspace/arc-story-api
  export server=https://arc-story-api-alpha.internal.arc.nile.works
  export auth=`head -n 1 arc-story-api-server/src/main/resources/allowed-peers.properties  | tr '=' ':'`
  echo "export xat='X-Auth-Token: foo'"
  echo "curl -vvv -u \"$auth\" -H \"$ct\" -H \"$xat\" $server/api/v1/story"
}


