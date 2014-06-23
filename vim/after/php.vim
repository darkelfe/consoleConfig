syn match phpSemicolonError contained display extend
	\ ";\s*\%(\%(\%(//.*$\|#.*$\|/\*\.\{-}\*/\)\s*\)*\)\@>\%([.*/\^|&,:!=<>]\|?>\@!\|++\@!\|--\@!\)"
syn match phpColonError contained display extend
	\ "::\@!\s*\%(\%(\%(//.*$\|#.*$\|/\*\.\{-}\*/\)\s*\)*\)\@>\%([.*/\^|&,:!=<>]\|?>\@!\|++\@!\|--\@!\)"
