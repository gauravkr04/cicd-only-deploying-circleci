FROM nginx:1.18-alpine

## Step 1:
# Remove the existing index file
RUN rm /usr/share/nginx/html/index.html

## Step 2:
# Copy source code to working directory
COPY ./green/index.html  /usr/share/nginx/html

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN make install

## Step 4:
# Expose port 80
EXPOSE 80


