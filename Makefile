 default: docker_build

    docker_build:
      @docker build \
        --build-arg VCS_REF=`git describe` \
        --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` .