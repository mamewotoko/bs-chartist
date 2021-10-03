open Chartist

let _ =
  Chartist.Line.make ".ct-chart"
    (Chartist.Line.data_t
       ~labels:[| "Monday"; "Tuesday"; "Wednesday"; "Thursday"; "Friday" |]
       ~series:[|
         [| 12.; 9.; 7.; 8.; 5. |]
       |]
       ())
;;
