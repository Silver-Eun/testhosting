# 기반 이미지로 eclipse-temurin-17을 사용한다.
FROM eclipse-temurin:17

# JAR_FILE 환경 변수를 설정한다.
ARG JAR_FILE=build/libs/*.jar

# JAR_FILE을 app.jar로 복사한다.
COPY ${JAR_FILE} app.jar

# app.jar를 실행한다.
# entrypoint를 사용하여 java -jar app.jar 커맨드를 실행한다.
ENTRYPOINT ["java","-jar","/app.jar"]