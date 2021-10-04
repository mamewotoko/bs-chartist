
(**)

type data_t = {
    labels: string array [@bs.optional];
    series: float array array; (* same length *)
  } [@@bs.deriving {abstract = light}]

type padding_t = {
    right: int [@bs.optional];
  } [@@bs.deriving {abstract = light}]

type axis_t = {
    showLabel: bool [@bs.optional];
    showGrid: bool [@bs.optional];
  } [@@bs.deriving {abstract = light}]

type opt_t = {
    chartPadding: padding_t [@bs.optional];

    low: float [@bs.optional];
    high: float [@bs.optional];
    (*line only?*)
    showArea: bool [@bs.optional];
    (*line only?*)
    showLine: bool [@bs.optional];
    (*line only?*)
    showPoint: bool [@bs.optional];
    fullWidth: bool [@bs.optional];

    (* bar only? *)
    seriesBarDistance: int [@bs.optional];
    axisX: axis_t [@bs.optional];

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
