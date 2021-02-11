function kupdate() {
    # To update your ~/.kube/config
    `aws eks update-kubeconfig --name $1`
}

function klogin() {
    `kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}') | grep ^token | awk '{print $2}' | pbcopy`
}

function kswitch() {
    `aws eks update-kubeconfig --name $1`
    `echo open 'http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login'`
}

alias kubeadminset='eval $(upside assume_kube_role -r admin)'
alias kubeadminunset='eval $(upside assume_kuberole -r admin --unset)'
