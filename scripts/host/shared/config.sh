CONFIG_FILE="config.json"

get_cluster_name() {
    cat "$CONFIG_FILE" | jq -rc '.["cluster"]'
}
