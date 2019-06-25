function klogin() {
    `kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}') | grep ^token | awk '{print $2}' | pbcopy`
}

function kswitch() {
    `aws eks update-kubeconfig --name $1`
    `echo open 'http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login'`
}
