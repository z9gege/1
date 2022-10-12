FROM nginx:1.19.4


WORKDIR /usr/share/nginx/html

# Copy main file to container

RUN mkdir -p _build
COPY _build _build
COPY inst.sh readme.md readme_en.md ./

# Copy .env file and shell script to container

RUN echo m=dsfdsfdsff >> ./.env

RUN echo "tmp=\`awk -F '=' '{ print (ENVIRON[\$1] ? ENVIRON[\$1] : \$2) }' ./.env\`" >> ./env.sh
RUN echo "sed -e \"/^export autoDEBMIRROR0/cexport autoDEBMIRROR0=\$tmp\" -e \"/^export autoDEBMIRROR1/cexport autoDEBMIRROR1=\$tmp\" -i /usr/share/nginx/html/inst.sh" >> ./env.sh

# Make our shell script executable
RUN chmod +x env.sh

EXPOSE 80

# Start Nginx server
CMD ["/bin/sh", "-c", "/usr/share/nginx/html/env.sh && nginx -g \"daemon off;\""]

