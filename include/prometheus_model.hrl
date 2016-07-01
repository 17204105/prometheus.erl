%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.22.5

-ifndef(prometheus_model).
-define(prometheus_model, true).

-define(prometheus_model_gpb_version, "3.22.5").

-ifndef('BUCKET_PB_H').
-define('BUCKET_PB_H', true).
-record('Bucket',
        {cumulative_count       :: non_neg_integer() | undefined, % = 1, 32 bits
         upper_bound            :: float() | integer() | infinity | '-infinity' | nan | undefined % = 2
        }).
-endif.

-ifndef('HISTOGRAM_PB_H').
-define('HISTOGRAM_PB_H', true).
-record('Histogram',
        {sample_count           :: non_neg_integer() | undefined, % = 1, 32 bits
         sample_sum             :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 2
         bucket = []            :: [#'Bucket'{}]    % = 3
        }).
-endif.

-ifndef('UNTYPED_PB_H').
-define('UNTYPED_PB_H', true).
-record('Untyped',
        {value                  :: float() | integer() | infinity | '-infinity' | nan | undefined % = 1
        }).
-endif.

-ifndef('QUANTILE_PB_H').
-define('QUANTILE_PB_H', true).
-record('Quantile',
        {quantile               :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 1
         value                  :: float() | integer() | infinity | '-infinity' | nan | undefined % = 2
        }).
-endif.

-ifndef('SUMMARY_PB_H').
-define('SUMMARY_PB_H', true).
-record('Summary',
        {sample_count           :: non_neg_integer() | undefined, % = 1, 32 bits
         sample_sum             :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 2
         quantile = []          :: [#'Quantile'{}]  % = 3
        }).
-endif.

-ifndef('COUNTER_PB_H').
-define('COUNTER_PB_H', true).
-record('Counter',
        {value                  :: float() | integer() | infinity | '-infinity' | nan | undefined % = 1
        }).
-endif.

-ifndef('GAUGE_PB_H').
-define('GAUGE_PB_H', true).
-record('Gauge',
        {value                  :: float() | integer() | infinity | '-infinity' | nan | undefined % = 1
        }).
-endif.

-ifndef('LABELPAIR_PB_H').
-define('LABELPAIR_PB_H', true).
-record('LabelPair',
        {name                   :: binary() | undefined, % = 1
         value                  :: binary() | undefined % = 2
        }).
-endif.

-ifndef('METRIC_PB_H').
-define('METRIC_PB_H', true).
-record('Metric',
        {label = []             :: [#'LabelPair'{}], % = 1
         gauge                  :: #'Gauge'{} | undefined, % = 2
         counter                :: #'Counter'{} | undefined, % = 3
         summary                :: #'Summary'{} | undefined, % = 4
         untyped                :: #'Untyped'{} | undefined, % = 5
         histogram              :: #'Histogram'{} | undefined, % = 7
         timestamp_ms           :: integer() | undefined % = 6, 32 bits
        }).
-endif.

-ifndef('METRICFAMILY_PB_H').
-define('METRICFAMILY_PB_H', true).
-record('MetricFamily',
        {name                   :: binary() | undefined, % = 1
         help                   :: binary() | undefined, % = 2
         type                   :: 'COUNTER' | 'GAUGE' | 'SUMMARY' | 'UNTYPED' | 'HISTOGRAM' | undefined, % = 3, enum MetricType
         metric = []            :: [#'Metric'{}]    % = 4
        }).
-endif.

-endif.
