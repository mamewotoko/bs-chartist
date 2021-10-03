
(**)
module rec Line:
sig
  type t
  type data_t = {
      labels : string array  [@bs.optional];
      series: float array array; (* same length *)
    } [@@bs.deriving {abstract = light}]
  (* type opt_t = {
   *   } *)
  external make: (* query *) string -> data_t -> t = "Line" [@@bs.new] [@@bs.module "chartist"]
end = Line
