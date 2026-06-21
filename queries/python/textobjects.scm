; Function / Method
((decorated_definition)?
  (function_definition
    body: (block)? @function.inner)) @function.outer

((decorated_definition)?
  (function_definition
    body: (block)? @method.inner)) @method.outer

; Parameter / Argument
(parameters
  [
    (identifier)
    (typed_parameter)
    (default_parameter)
    (dictionary_splat_pattern)
    (list_splat_pattern)
    (tuple_pattern)
  ] @parameter.outer)

(parameters
  [
    (identifier)
    (typed_parameter)
    (default_parameter)
    (dictionary_splat_pattern)
    (list_splat_pattern)
    (tuple_pattern)
  ] @parameter.inner)

(argument_list
  [
    (keyword_argument)
    (dictionary_splat_pattern)
    (list_splat_pattern)
    (_)
  ] @parameter.outer)

(argument_list
  [
    (keyword_argument)
    (dictionary_splat_pattern)
    (list_splat_pattern)
    (_)
  ] @parameter.inner)
