FROM tjhei/candi-base:gcc5

MAINTAINER timo.heister@gmail.com

USER root

RUN apt-get update && apt-get -yq install \
    --no-install-recommends \
    clang++-6.0 clang-6.0 clang-tidy-6.0 \
    clang-tools-6.0 \
    python-yaml

RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 100 && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100 && \
    update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-6.0 100 && \
    update-alternatives --install /usr/bin/run-clang-tidy.py run-clang-tidy.py /usr/bin/run-clang-tidy-6.0.py 100 && \
    update-alternatives --install /usr/bin/clang-apply-replacements clang-apply-replacements /usr/bin/clang-apply-replacements-6.0 100

# use clang in MPICH:
ENV MPICH_CXX clang++-6.0
ENV MPICH_CC clang-6.0

# Select the default compiler
ENV CC mpicc
ENV CXX mpicxx
ENV FC mpif90
ENV FF mpif77

USER $USER
