FROM hseeberger/scala-sbt:8u265_1.3.13_2.11.12

RUN apt-get update || true
RUN apt-get install jq 
ENV SLEEP_DURATION 5s
COPY build.sh .
COPY BP-BASE-SHELL-STEPS/functions.sh .

ENV ACTIVITY_SUB_TASK_CODE SBT_EXECUTE

ENTRYPOINT [ "./build.sh" ]
