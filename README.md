<h1 align="center">
  LaTeX-Template
</h1>

## Another LaTeX-Template?
This repo aims to reduce productivity when working with LaTeX projects.
As specially for faster initial setup and reduced collaboration problems.

For this a few categorical decisions are enforced by this repo (and should be adopted).

It does not enforce any style related question on your `LaTeX` project.
Including type of project (article, report, beamer), used packages and formatting 

How often have you seen this message after a pull or download of a template?
``` 
LaTeX Error: File *.sty not found.
```
The LaTeX code is compiled (and edited) in a Docker container, by default [texlive/texlive](https://hub.docker.com/r/texlive/texlive).
This should eliminate any installation or missing package problems, or at least requires a non-local, i.e. repo based, fix of such.

Did you compile with `pdflatex ➞ bibtex ➞ pdflatex x 2` or `lualatex`?
The compiler of choice is `LuaTex` controlled by `latexmk`.
No more wrong recipes or different library backends between collaborators, hopefully eliminating compilation differences and problems further.

## How To Use
Clone this repo
```
git clone git@github.com:schnellerhase/latex-template.git
```
open in [VSCode](https://github.com/microsoft/vscode) (or if you must the editor of your choice)
```
code latex-template
```
you should pre prompted for the dev container press `Reopen in Container`.
(If no prompt is shown press <kdb>CTRL</kdb> + <kdb>SHIFT</kdb> + <kdb>P</kdb>, select `DevContainers: Reopen in Container`.)
`latex-workshop` is installed by default and is configured for `latexmk` only.

If you decide to use another code editor or want to compile only use 
```
make
```
which triggers the execution in the same container as well.

Remove any for you unecessary contents, check the CI directory `.github/` and `.devcontainer/` and `.vscode/` if VSCode is not used.

Happy Texing.

---
