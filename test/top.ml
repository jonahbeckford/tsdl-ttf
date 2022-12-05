#use "topfind";;

#thread;;

Printf.printf "Sys.interactive = %b\n" !Sys.interactive;;

Printf.printf "Backend = %s\n"
  (match Sys.backend_type with
  | Native -> "native"
  | Bytecode -> "bytecode"
  | Other s -> "other: " ^ s);;

#require "tsdl-ttf";;

Tsdl_ttf.Ttf.init () |> ignore;;
