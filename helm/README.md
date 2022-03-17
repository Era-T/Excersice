## Installing Helm

Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

Please follow this guide to install Helm: https://helm.sh/docs/intro/install/


## Helm concepts
 - **Chart** is a package in Helm. It has a name, and contains a set of Kubernetes resource definitions that are used to deploy your application.

 - **Repository** is an online collection of charts. It has a URL. You can search, download and install charts from a repository.

 - **Release** is an instance or a deployment of a chart. When you perform a helm install command, you are creating a new release of that chart on your Kubernetes cluster.


 ## Helm commands

 ADD A REMOTE CHART REPOSITORY - This adds a collection of charts called a repository

    helm repo add [name] [url]

Example - using the Bitnami chart repository:


    helm repo add bitnami https://charts.bitnami.com/bitnami

LIST ALL YOUR REPOSITORIES - You can see all of the repositories (the remote locations for downloading charts) that you have added to your helm installation:

    helm repo list


INSTALL A CHART BY REFERENCE FROM A REPOSITORY - This will install a chart from a repository, so you should ensure that you’ve set up the repository first.

    helm install myapp-instance sourcerepo/myapp


Uninstalling a release - To uninstall a chart release from your cluster:

    helm uninstall <release-name>


CREATING A NEW CHART - If you want to create your own chart:


    helm create [path]
    helm create api



    
