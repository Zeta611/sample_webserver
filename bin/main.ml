open Dream

let () =
  router [ get "/" (fun _ -> html "Hello, World!") ]
  |> logger
  |> run ~interface:"0.0.0.0" ~port:(int_of_string (Sys.getenv "PORT"))
