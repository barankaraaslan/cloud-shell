FROM archlinux:latest

RUN pacman -Syu --noconfirm aws-cli terraform
RUN --mount=type=secret,id=aws_credentials cat /run/secrets/aws_credentials | aws configure 
