(lang dune 3.4)

(name sample_webserver)

(generate_opam_files true)

(source
 (github Zeta611/sample_webserver))

(authors "Jay Lee")

(maintainers "Jay Lee")

(license MIT)

; (documentation https://url/to/documentation)

(package
 (name sample_webserver)
 (synopsis "A sample webserver in OCaml")
 (description "A sample webserver in OCaml using Dream")
 (depends ocaml dune)
 (tags
  (server dream)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
