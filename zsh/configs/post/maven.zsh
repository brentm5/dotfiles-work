export MAVEN_OPTS="-Dmaven.artifact.threads=12 -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Dparallel=all -DperCoreThreadCount=true"

export MAVEN_ARGS="-T 4"
