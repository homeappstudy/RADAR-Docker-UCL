# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


FROM confluentinc/cp-kafka-connect:3.2.1

MAINTAINER Nivethika M <nivethika@thehyve.nl> , Joris B <joris@thehyve.nl>

LABEL description="RADAR-base Backend- HDFS Sink Connector"

# Deploy RADAR-Backend - HDFS Sink Connector
ADD  https://github.com/RADAR-base/RADAR-HDFS-Sink-Connector/releases/download/v0.1/radar-hdfs-sink-connector-0.1-sources.jar /etc/kafka-connect/jars/

# Load topics validator
COPY ./kafka_status.sh /home/kafka_status.sh

# Load modified launcher
COPY launch /etc/confluent/docker/launch
