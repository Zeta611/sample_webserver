open Dream

let () =
  router
    [
      (get "/" @@ fun request -> html (Template.upload request));
      ( post "/" @@ fun request ->
        match%lwt multipart request with
        | `Ok [ ("files", files) ] -> html (Template.report files)
        | _ -> empty `Bad_Request );
    ]
  |> logger |> memory_sessions
  |> run ~interface:"0.0.0.0" ~port:(int_of_string (Sys.getenv "PORT"))
