
(**)

type data_t = {
    labels: string array [@bs.optional];
    series: float array array; (* same length *)
  } [@@bs.deriving {abstract = light}]

type padding_t = {
    top: int [@bs.optional];
    right: int [@bs.optional];
    bottom: int [@bs.optional];
    left: int [@bs.optional];
  } [@@bs.deriving {abstract = light}]

type axis_t = {
    offset: float [@bs.optional];
    showLabel: bool [@bs.optional];
    showGrid: bool [@bs.optional];
  } [@@bs.deriving {abstract = light}]

type opt_t = {
    (* TODO: float or object *)
    chartPadding: padding_t [@bs.optional];
    labelOffset: float [@bs.optional];
    (* TODO: enum e.g. explode *)
    labelDirection: string [@bs.optional];

    low: float [@bs.optional];
    high: float [@bs.optional];
    (*line only?*)
    showArea: bool [@bs.optional];
    (*line only?*)
    showLine: bool [@bs.optional];
    (*line only?*)
    showPoint: bool [@bs.optional];
    fullWidth: bool [@bs.optional];
    lineSmooth: bool [@bs.optional];
    
    scaleMinSpace: float [@bs.optional];
    onlyInteger: bool [@bs.optional];
    referenceValue: float [@bs.optional];
    reverseData: bool [@bs.optional];
    
    (* bar only? *)
    seriesBarDistance: int [@bs.optional];
    axisX: axis_t [@bs.optional];
    axisY: axis_t [@bs.optional];
    horizontalBars: bool [@bs.optional];
    
    (* pie only? *)
    donut: bool [@bs.optional];
    donutWidth: float [@bs.optional];
    (* degree *)
    donutAngle: float [@bs.optional];
    total: float [@bs.optional];

    labelInterpolationFnc: string -> string [@bs.optional]
  } [@@bs.deriving {abstract = light}]

module rec Line:
sig
  type t
  external make: (* query *) string
                 -> data_t
                 -> ?opt:opt_t
                 -> unit
                 -> t = "Line" [@@bs.new] [@@bs.module "chartist"]
end = Line

module rec Bar:
sig
  type t
  external make: (* query *) string
                 -> data_t
                 -> ?opt:opt_t
                 -> unit
                 -> t = "Bar" [@@bs.new] [@@bs.module "chartist"]
end = Bar

        (* timeseries *)


module rec Pie:
sig
  type t
  external make: (* query *) string
                 -> data_t
                 -> ?opt:opt_t
                 -> unit
                 -> t = "Pie" [@@bs.new] [@@bs.module "chartist"]
end = Pie
