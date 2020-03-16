Resume As a Code
================

We do Everything-As-a-Code, why don't we make ordinary resumes the same way?



Prerequisites
=============

You need `pdflatex` to build these artifacts. Depending on the way you installed LaTeX, you may need to install some additional CTAN packages (check the source document preamble to ensure that all mentioned packages are installed in your system).



Build
=====

Run

```
make all
```

and check the `target` directory for the result artifacts.

Auxiliary build files are stored in `build` directory and do not need to be versioned with `git`.
