images: {} 
compose:
  archive: "$COMPOSE"
volumes:
  data:
    filesystem: "ext4"
    mount: "/mnt/data"
    seed: "$DATA_WORKLOAD_PASS"
type: workload
