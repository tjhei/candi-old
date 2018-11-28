candi docker images
=====

This repo lists the current docker images available to use candi inside docker.

The images currently are:

| img | dependencies | deal.II version |
| --- | --- | --- |
| tjhei/candi:v8.5.1-r1 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | - |
| tjhei/candi:v9.0.1-r4 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | - |
| tjhei/dealii:v8.5.1-full-v8.5.1-r1 | [8.5](https://github.com/dealii/candi/tree/dealii-8.5) | [v8.5.1](https://github.com/dealii/dealii/releases/tag/v8.5.1) |
| tjhei/dealii:v9.0.1-full-v9.0.1-r4 | [9.0](https://github.com/dealii/candi/tree/dealii-9.0) | [v9.0.1](https://github.com/dealii/dealii/releases/tag/v9.0.1) |

To use deal.II you can use:
```
docker run -it tjhei/dealii:v9.0.1-r4
```
and all dependencies including ``DEAL_II_DIR`` are set up correctly.


Usage examples:
---------------

For an example of testing your application with different deal.II versions,
see https://github.com/tjhei/cracks/blob/master/contrib/test.sh


