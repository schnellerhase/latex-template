<h1 align="center">
  LaTeX-Template
</h1>

## Another LaTeX-Template?

This repo aims to improve productivity when working with LaTeX projects.
Especially for faster initial setup and reduced collaboration problems.

For this a few categorical decisions are enforced by this template.
However, no `LaTeX` style is enforced on your project only the technical aspects of editor, compiler and tooling.

## Why another LaTeX template?

How often have you seen messages such as

```
LaTeX Error: File *.sty not found.
```

after a template download?
Witnessed how the compile time on overleaf got out of hand and you needed to switch to a standalone solution?
Or faced a tedious resetup after a switching to a new mashine?

## Choices of this template

> On my setup it compiles...

The LaTeX code is compiled (and edited) in a **Docker container**, by default [texlive/texlive](https://hub.docker.com/r/texlive/texlive).
This should eliminate any installation or missing package problems, or at least requires a non-local, i.e. repo based, fix of such.

> Did you compile with `pdflatex ➞ bibtex ➞ pdflatex x 2` or `lualatex`?

The **compiler** of choice is `LuaTex` controlled by `latexmk`.
No more wrong recipes or different library backends between collaborators, hopefully eliminating compilation differences and problems further.

> When did this stop to work?

**Continuous Integration** is performed through Github actions.
This eliminates breaking changes from going unnoticed.

## How To Use

Clone this repo (or use the Github template functionality)

```
git clone git@github.com:schnellerhase/latex-template.git
```

open in [VSCode](https://github.com/microsoft/vscode)

```
code latex-template
```

you should pre prompted for the dev container press `Reopen in Container`.
(If no prompt is shown press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>, select `DevContainers: Reopen in Container`.)
`latex-workshop` is installed by default and is configured for `latexmk` only.
Also `tex-fmt` is configured for the formatting of the LaTeX code.

Optionally, remove any for you unecessary directories and files.
Especially check if you need the directories `.github/` and `.devcontainer/` and `.vscode/`.

Happy TeXing.

---
