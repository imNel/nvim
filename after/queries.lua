local query = vim.treesitter.parse_query('javascript', [[
(jsx_element
  open_tag: (jsx_opening_element
    attribute: 
    (jsx_attribute 
      (property_identifier) @identifier (#eq? @identifier "className")
      (string (string_fragment) @string_frag )
    )
  )
)
]])
