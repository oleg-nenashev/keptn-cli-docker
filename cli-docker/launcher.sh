#! sh -ex

keptn auth --endpoint=$1 --api-token=$2
shift 2
keptn $*
