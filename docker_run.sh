SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run \
    --rm \
    --name asb \
    --mount type=bind,source=$SCRIPT_DIR,target=/asb \
    -v asb_mysql_data:/var/lib/mysql \
    -p 8080:8080 \
    -p 3306:3306 \
    -p 54230:54230 \
    -p 54001:54001 \
    -p 54231:54231 \
    -p 51220:51220 \
    -p 54002:54002 \
    -p 54003:54003 \
    -d asb