# syntax=docker/dockerfile:1
# =============================================================================
#  Dockerfile - FILE KHUNG (multi-stage build cho Spring Boot 4 / Java 21 / Gradle)
#  Sinh viên hoàn chỉnh các ô ______ theo yêu cầu Phần 2 của đề thi.
# =============================================================================

# ---------- Stage 1: build - biên dịch & đóng gói bằng Gradle + JDK 21 ----------
# Spring Boot 4 yêu cầu Gradle >= 8.14
FROM ______ AS ______
WORKDIR /workspace

# Copy build.gradle + settings.gradle trước, tải dependency để tận dụng cache layer
COPY ______ ./
RUN ______

# Copy mã nguồn rồi đóng gói file JAR (bỏ qua test)
COPY ______ ./src
RUN ______

# ---------- Stage 2: runtime - chỉ chứa JRE 21 + file JAR ----------
FROM ______ AS runtime

# Phiên bản ứng dụng truyền vào lúc build (docker compose: build-arg APP_VERSION)
ARG ______=dev
ENV APP_VERSION=______ \
    JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=75"

WORKDIR /app

# Chạy ứng dụng bằng user thường, không dùng root
RUN addgroup -S spring && adduser -S spring -G spring
# Chỉ lấy file JAR từ stage build
COPY ______ /app/app.jar
USER ______

EXPOSE ______

# ENTRYPOINT dạng exec (mảng JSON)
ENTRYPOINT ______
