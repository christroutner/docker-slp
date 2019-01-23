# Builds a Docker container with the Electron Cash SLP wallet.

FROM python-base
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

# Copy config files.
RUN mkdir /home/safeuser/.electron-cash
COPY config /home/safeuser/.electron-cash/config
RUN sudo chown safeuser /home/safeuser/.electron-cash/config
RUN mkdir /home/safeuser/.electron-cash/wallets
COPY default_wallet /home/safeuser/.electron-cash/wallets/default_wallet

# Expose the port defined in the config file.
EXPOSE 5111

COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]

#WORKDIR /home/safeuser/Electron-Cash-SLP-3.4.3
#CMD ["./electron-cash", "daemon", "-v"]
