#install podman kind kubectl httpie and k6
bash ./check_and_install.sh podman-desktop kind kubernetes-cli httpie k6 helm

#create cluster
KIND_EXPERIMENTAL_PROVIDER=podman kind create cluster
