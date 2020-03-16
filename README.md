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
make
```

and check the `target` directory for the resulting artifacts.

If you want to build only single language artifact, specify the language as a target, e.g.

```
make en
```

or

```
make ru
```



Notes
=====

Auxiliary build files are stored in `build` directory and do not need to be versioned with `git`.
