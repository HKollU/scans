#Getting Image Base
FROM kalilinux/kali-rolling
#Getting Locale
RUN apt-get update && apt-get -y install locales
#Getting nmap
RUN apt-get update && apt-get -y install nmap
#Getting nikto
RUN apt-get update && apt-get -y install nikto
#Getting uniscan
RUN apt-get update && apt-get -y install uniscan
#Getting git
RUN apt-get update && apt-get -y install git
#Getting clone
RUN git clone https://github.com/HKollU/scans.git
#Exposing ports
EXPOSE 8834
