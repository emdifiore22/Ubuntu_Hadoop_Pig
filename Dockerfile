FROM rebdiluca/ubuntu_hadoop

# Creazione cartelle pig
RUN mkdir /usr/lib/pig
RUN mkdir /usr/lib/pig/pig-0.17.0

# Copia home pig
COPY pig-0.17.0 usr/lib/pig/pig-0.17.0

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PIG_HOME="/usr/lib/pig/pig-0.17.0" 
ENV PIG_CONF_DIR="$PIG_HOME/conf" 
ENV PIG_CLASSPATH="$PIG_CONF_DIR" 
ENV PATH="$PIG_HOME/bin:$PATH" 
ENV PATH=$PATH:HADOOP_HOME/bin

