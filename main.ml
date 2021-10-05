open Chartist


let () =
  let _ : Chartist.Line.t =
    Chartist.Line.make ".ct-chart"
      (data_t
         ~labels:[| "Monday"; "Tuesday"; "Wednesday"; "Thursday"; "Friday" |]
         ~series:[|
           [| 12.; 9.; 7.; 8.; 5. |]
         |]
         ())
      () in
  let _ : Chartist.Bar.t =
    Chartist.Bar.make ".ct-bar-chart"
      (data_t
         ~labels:[| "Monday"; "Tuesday"; "Wednesday"; "Thursday"; "Friday" |]
         ~series:[|
           [| 12.; 9.; 7.; 8.; 5. |];
           [| 2.; 29.; 4.; 8.4; 34. |]
         |]
         ())
        () in
  let _ : Chartist.Line.t =
    Chartist.Line.make ".ct-area-chart"
      (data_t
         ~labels:[| "Monday"; "Tuesday"; "Wednesday"; "Thursday"; "Friday" |]
         ~series:[|
           [| 2.; 29.; 4.; 8.4; 34. |]
         |]
         ())
      ~opt:(opt_t
              ~low:0.0
              ~showArea:true
              ())
        () in
  let _ : Chartist.Line.t =
    Chartist.Line.make ".ct-biarea-chart"
      (data_t
         ~labels:[| "1"; "2"; "3"; "4"; "5"; "6"; "7"; "8" |]
         ~series:[|
             [| 1.; 2.; 3.; 1.; -2.; 0.; 1.; 0. |];
             [| -2.; -1.; -2.; -1.; -2.5; -1.; -2.; -1. |];
             [| 0.; 0.; 0.; 1.; 2.; 2.5; 2.; 1. |];
             [| 2.5; 2.; 1.; 0.5; 1.; 0.5; -1.; -2.5 |]
           |]
           ())
      ~opt:(opt_t
              ~high: 3.0
              ~low: ~-.3.0
              ~showArea:true
              ~showLine:false
              ~showPoint:false
              ~fullWidth:true
              ~axisX:(axis_t
                        ~showLabel:true
                        ~showGrid:true
                        ())
              ())
      () in
  (* let _ : Chartist.Pie.t =
   *   Chartist.Pie.make ".ct-pie-chart"
   *     (data_t
   *        ~labels: [| "Bananas"; "Apples"; "Grapes" |]
   *        ~series:[|
   *          [| 20.; 15.; 40. |]
   *        |]
   *        ())
   *     ~opt:(opt_t
   *             ~labelInterpolationFnc: (fun x -> x)
   *             ())
   *     ()
   *   in *)
  (* let d = Js.Date.fromString "2021-09-22T21:00:00Z:00:00" in *)
  ()
;;
