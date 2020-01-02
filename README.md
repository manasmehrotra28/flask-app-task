# flask-app-task

Firstly, we git clone the notejam/flask repo "https://github.com/komarserjio/notejam.git" to our directory (web-flask).

Then, we create a docker file to dockerised this flask web app. For this,

    $ nano Dockerfile
   
you can use any editor to create dockerfile (as given above). After that, Now build this dockerfile to make docker image out of it.

    $ sudo docker build -t <image_name:tag> .
    
with this command docker image is build, we can check it through this command,
  
    $ sudo docker images
    
Now, we have to run this image to create docker container out of it,

    $ sudo docker run -it -p 5000:5000 <image_name:tag>
    
flask app uses 5000 port by default and "--network=host" tells our flask app to run on localhost. With this run command our container is up and running. We can see it by this command,
    
    $ sudo docker ps
    
Now, we can check our flask app up and running or not, for this open browser and give address http://127.0.0.1:5000

Then we have to deploy this app on Kubernetes cluster. After setting up the Kubernetes cluster with kubeadm, create a deployment for this flask web app on master node (file given above).

    $ sudo kubectl create -f <deployemnt_name.yaml>
    
now check our deployments by this command,

    $ sudo kubectl get deployments
    
and status of pods with this command,
  
    $ sudo kubectl get pods
    
Our deployment is successful, now expose this pod to outside world for accessing the app we use service as a NodePort.

    $ sudo kubectl expose deployment <deployment_name> --type=NodePort
    
Now, our deployment are exposed for accessing this check the svc to know the ports and ips.

    $ sudo kubectl describe pod <pod_name>
    
Then, run our app on port given in NodePort.
