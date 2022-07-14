FROM bitnami/spark:latest

RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.12.259/aws-java-sdk-1.12.259.jar --output /opt/bitnami/spark/jars/aws-java-sdk-1.12.259.jar
RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.3/hadoop-aws-3.3.3-javadoc.jar -- output /opt/bitnami/spark/jars/hadoop-aws-3.3.3-javadoc.jar