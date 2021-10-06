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
      ~opt:(opt_t
              ~lineSmooth: false
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
  let _ : Chartist.Bar.t =
    Chartist.Bar.make ".ct-hbar-chart"
      (data_t
         ~labels:[| "Mon"; "Tue"; "Wed"; "Thr"; "Fri" |]
         ~series:[|
           [| 12.; 9.; 7.; 8.; 5. |];
           [| 2.; 29.; 4.; 8.4; 34. |]
         |]
         ())
      ~opt:(opt_t
              ~chartPadding:(padding_t
                               ~top:10
                               ~right:10
                               ~bottom:10
                               ~left:10
                               ())
              ~fullWidth:false
              ~seriesBarDistance:10
              ~horizontalBars:true
              ~reverseData:true
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
  let _ : Chartist.TimeSeries.t =
    Chartist.TimeSeries.make ".ct-timeseries-chart"
      (Chartist.TimeSeries.data_t
         ~series: [|
           (Chartist.TimeSeries.ts_t
              ~data: [|
                { x = Js.Date.fromString "2021-07-16T00:00:00Z00:00"; y = 53. };
                { x = Js.Date.fromString "2021-07-17T00:00:00Z00:00"; y = 40. };
                { x = Js.Date.fromString "2021-07-18T00:00:00Z00:00"; y = 45. };
                { x = Js.Date.fromString "2021-07-19T00:00:00Z00:00"; y = 40. };
                { x = Js.Date.fromString "2021-07-20T00:00:00Z00:00"; y = 20. };
                { x = Js.Date.fromString "2021-07-21T00:00:00Z00:00"; y = 32. };
                { x = Js.Date.fromString "2021-07-22T00:00:00Z00:00"; y = 18. };
                { x = Js.Date.fromString "2021-07-23T00:00:00Z00:00"; y = 11. }
              |]
              ())
         |]
         ())
      ~opt:(opt_t
              ~showPoint:false
              ~fullWidth:true
              ~axisX:(axis_t
                        (* TODO: add labelInterpolationFnc to draw x label *)
                        ~showLabel:true
                        ~showGrid:true
                        ())
              ())
      () in
  let _ : Chartist.Pie.t =
    Chartist.Pie.make ".ct-pie-chart"
      (Chartist.Pie.data_t
         ~labels: [| "Bananas"; "Apples"; "Grapes" |]
         ~series:[| 20.; 40.; 40. |]
         ())
      ~opt:(opt_t
              ~labelInterpolationFnc: (fun x -> x)
              ~total: 100.
              ())
      ()
    in
  let _ : Chartist.Pie.t =
    Chartist.Pie.make ".ct-donut-chart"
      (Chartist.Pie.data_t
         ~labels: [| "Bananas"; "Apples"; "Grapes" |]
         ~series:[| 20.; 40.; 40. |]
         ())
      ~opt:(opt_t
              ~labelInterpolationFnc: (fun x -> x)
              ~total: 100.
              ~donut:true
              ~donutWidth: 20.
              ())
      ()
    in
  ()
;;
