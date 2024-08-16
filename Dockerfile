FROM ghcr.io/martinluttap/bio-ubuntu:1.0.0

RUN git clone https://github.com/NCI-GDC/fastq_cleaner.git \
    && cd fastq_cleaner/ \
    && make -j $(nproc) \
    && mv fastq_cleaner /usr/local/bin/ \
    && cd \
    && rm -rf fastq_cleaner \
    && rm -rf /tmp/* /var/tmp/*
