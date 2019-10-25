#!/bin/bash
./gradlew consumer:check
./gradlew consumer:pactPublish
./gradlew :providers:springboot-provider:pactVerify -Ppact.provider.tag=SpringBootProvider -Ppact.verifier.publishResults=true -Ppact.provider.version=test

