-- Snippets for quickly inserting Greek letters.

return {
  s(
    {trig = ";a", snippetType = "autosnippet"},
    {t("\\alpha"), }
  ),

  s(
    {trig = ";b", snippetType = "autosnippet"}, 
    {t("\\beta"), }
  ),

  s(
    {trig = ";g", snippetType = "autosnippet"},
    {t("\\gamma"), }
  ), 

  s(
    {trig = ";eps", snippetType = "autosnippet"},
    {t("\\varepsilon"), }

  ),

  s(
    {trig = ";p", snippetType = "autosnippet"},
    {t("\\pi"), }

  ),

  s(
    {trig = ";d", snippetType = "autosnippet"},
    {t("\\delta"), }
  ), 

  s(
    {trig = ";t", snippetType = "autosnippet"},
    {t("\\theta"), }
  ), 

  s(
    {trig = ";l", snippetType = "autosnippet"}, 
    {t("\\lambda"), }
  ), 

  s(
    {trig = ";m", snippetType = "autosnippet"}, 
    {t("\\mu"), }
  ), 

  s(
    {trig = ";n", snippetType = "autosnippet"}, 
    {t("\\nu"), }
  ), 

  s(
    {trig = ";r", snippetType = "autosnippet"}, 
    {t("\\rho"), }
  ), 

  s(
    {trig = ";s", snippetType = "autosnippet"}, 
    {t("\\sigma"), }
  ), 

  s(
    {trig = ";tau", snippetType = "autosnippet"}, 
    {t("\\tau"), }
  ),

  s(
    {trig = ";phi", snippetType = "autosnippet"},
    {t("\\phi"), }
  ),

  s(
    {trig = ";chi", snippetType = "autosnippet"},
    {t("\\chi"), }
  ),

  s(
    {trig = ";o", snippetType = "autosnippet"}, 
    {t("\\omega"), }
  ),

  -- capital Greek letters
  s(
    {trig = ";G", snippetType = "autosnippet"},
    {t("\\Gamma"), }
  ), 

  s(
    {trig = ";D", snippetType = "autosnippet"},
    {t("\\Delta"), }
  ),

  s(
    {trig = ";S", snippetType = "autosnippet"}, 
    {t("\\Sigma"), }
  ), 

  s(
    {trig = ";O", snippetType = "autosnippet"}, 
    {t("\\Omega"), }
  )
}
