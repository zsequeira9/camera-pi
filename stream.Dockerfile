ARG DEVICE

from mpromonet/webrtc-streamer

ENV DEVICE=${DEVICE} 
RUN echo {"urls" : {"USB Camera" : {"video" : "videocap://${DEVICE}"}}} >> /usr/local/share/webrtc-streamer/config.json

