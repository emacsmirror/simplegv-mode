
(setq simplegv-keywords 
      '(
	("BEGIN\\|GATE_DELAY\\|ELEMENT_DELAY\\|SIGNED\\|UNSIGNED\\|FIXED\\|INPUTS\\|OUTPUT_SET_TYPE\\|SHARED\\|MEMORY\\|FILE\\|DATA\\|NAMED_VALUE_LISTS\\|OUTPUTS\\|INCLUDE\\|EXCLUDE\\|REQUIRE\\|RANGE\\|ECORNERS\\|CORNERS\\|UNIQUERAND\\|WILDCARD\\|RANDOM" . font-lock-keyword-face)

	("#+.*" . font-lock-comment-face)
	
	("\\<BEGIN *" "\\<[a-zA-Z_]+\\>" nil nil (0 font-lock-function-name-face))
	
	("NAMED_VALUE_LISTS *\n.*" "\\<[a-zA-Z_]+\\>" nil nil (0 font-lock-variable-name-face))
	
	("\\<OUTPUT_SET_TYPE  *\\(SHARED \\)? *" "\\<[a-zA-Z_]+\\>" nil nil (0 font-lock-type-face))
	
       )
)
			  


(define-derived-mode simplegv-mode prog-mode
 "GV JLS"
 (setq font-lock-defaults '(simplegv-keywords))
)

(provide 'simplegv-mode)
