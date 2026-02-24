FROM nginx
ARG DEVICE
ENV DEVICE=${DEVICE}
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./app /etc/nginx/html
RUN echo "const DEVICE = ${DEVICE}" >> ./etc/nginx/html/config.js
