;; extends
;; ((call_expression function:(identifier) @capture (#eq? @capture "dispatch")) (#set! conceal "d"))

(jsx_element 
  open_tag:(jsx_opening_element 
    attribute:(jsx_attribute 
      (property_identifier) @classname (#eq? @classname "className")
      (string(string_fragment) @string (#set! @string conceal "…")) 
    )
  )
)

