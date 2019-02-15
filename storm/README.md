
How to use this image
Running topologies in local mode
Assuming you have topology.jar in the current directory.

$ docker run -it -v $(pwd)/topology.jar:/topology.jar leijiangping/storm storm jar /topology.jar org.apache.storm.starter.ExclamationTopology
Setting up a minimal Storm cluster
Apache Zookeeper is a must for running a Storm cluster. Start it first. Since the Zookeeper "fails fast" it's better to always restart it.

$ docker run -d --restart always --name some-zookeeper zookeeper
The Nimbus daemon has to be connected with the Zookeeper. It's also a "fail fast" system.

$ docker run -d --restart always --name some-nimbus  leijiangping/storm storm nimbus
Finally start a single Supervisor node. It will talk to the Nimbus and Zookeeper.

$ docker run -d --restart always --name supervisor leijiangping/storm storm supervisor
Now you can submit a topology to our cluster.

$ docker run --link some-nimbus:nimbus -it --rm -v $(pwd)/topology.jar:/topology.jar leijiangping/storm storm jar /topology.jar org.apache.storm.starter.WordCountTopology topology
Optionally, you can start the Storm UI.

$ docker run -d -p 8080:8080 --restart always --name ui --link some-nimbus:nimbus leijiangping/storm storm ui



