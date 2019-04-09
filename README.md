candi docker images
=====

This repo lists the current docker images available to use candi inside docker.

The images currently are:

| img | candi | deal.II version | note |
| --- | --- | --- |
| tjhei/candi-base:gcc5 | - | - | ubuntu base with MPICH 3.2 and gcc 5.4 |
| tjhei/candi-base:clang6 | - | - | ubuntu base with MPICH 3.2 and clang 6 |
| tjhei/candi:v8.5.1-r1-gcc5 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | - |
| tjhei/candi:v9.0.1-r4-gcc5 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | - |
| tjhei/dealii:v8.5.1-full-v8.5.1-r1-gcc5 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | [v8.5.1](https://github.com/dealii/dealii/releases/tag/v8.5.1) | |
| tjhei/dealii:v9.0.1-full-v9.0.1-r5-gcc5 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | [v9.0.1](https://github.com/dealii/dealii/releases/tag/v9.0.1) | |
| tjhei/dealii:v9.0.1-full-v9.0.1-r5-clang6 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | [v9.0.1](https://github.com/dealii/dealii/releases/tag/v9.0.1) | |

For older images, please check
[docker hub tjhei/candi](https://hub.docker.com/r/tjhei/candi/tags/)
and
[docker hub tjhei/dealii](https://hub.docker.com/r/tjhei/dealii/tags/)

To use deal.II you can use:
```
docker run -it tjhei/dealii:v9.0.1-full-v9.0.1-r5-gcc5
```
and all dependencies including ``DEAL_II_DIR`` are set up correctly.


Older images:
-------------

| img | dependencies | deal.II version |
| --- | --- | --- |
| tjhei/candi:v8.5.1-r1 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | - |
| tjhei/candi:v9.0.1-r4 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | - |
| tjhei/dealii:v8.5.1-full-v8.5.1-r1 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | [v8.5.1](https://github.com/dealii/dealii/releases/tag/v8.5.1) |
| tjhei/dealii:v9.0.1-full-v9.0.1-r4 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | [v9.0.1](https://github.com/dealii/dealii/releases/tag/v9.0.1) |

Usage examples:
---------------

For an example of testing your application with different deal.II versions,
see https://github.com/tjhei/cracks/blob/master/contrib/test.sh


