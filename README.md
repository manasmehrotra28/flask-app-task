# flask-app-task

Firstly, we git clone the notejam/flask repo "https://github.com/komarserjio/notejam/tree/master/flask" to our directory (web-flask).

Then, we create a docker file to dockerised this flask web app. For this,

    $ nano Dockerfile
   
you can use any editor to create dockerfile (as given above). After that, Now build this dockerfile to make docker image out of it.

    $ sudo docker build -t <image_name:tag> .
    
with this command docker image is build, we can check it through this command,
  
    $ sudo docker images
    
Now, we have to run this image to create docker container out of it,

    $ sudo docker run -it -p 5000:5000 --network=host <image_name:tag>
    
flask app uses 5000 port by default and "--network=host" tells our flask app to run on localhost. With this run command our container is up and running. We can see it by this command,
    
    $ sudo docker ps
    
Now, we can check our flask app up and running or not, for this open browser and give address http://127.0.0.1:5000

Then we have to deploy this app on Kubernetes cluster.
