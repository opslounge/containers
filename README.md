Pure Service Orchestrator user guide
This guide contains some basic instructions on general use of Pure Service Orchestrator

Future adds to include installation and configuration of PSO for docker.

Creating volumes
####Create a new volume using a label as defined in your "pure.json" (labels are key value pairs) docker volume create --driver pure -o size=100gb snaptest --label=1b

####Create a new volume with PSO### docker volume create --driver pure -o size=100GB snaptest

Removing volumes
####Remove a volume#### docker volume rm --driver pure -o size=1GB andyparsonsiscsidockertestvolume

Snapshot management
####Create a brand-new volume of that size, could be on any array managed by PSO. -o volume_label_selector=<xxx>

####Create a copy of a source volume. Snap a volume docker volume create --driver pure -o source= : Create a copy of this volume, obviously the copy is created on the same array. can be a volume or a snapshot.

####Create a copy of an existing volume#### docker volume create --driver pure -o import_from_src=
