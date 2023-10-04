\begin{tikzpicture}[remember picture,overlay]
\draw[remember picture, overlay, ultra thin, black!50]($(current page.north)+(-4.95cm,-1.75cm)$)--($(current page.south)+(-4.95cm,0.75cm)$);
\draw[remember picture, overlay, ultra thin, black!50]($(current page.north)+(-4.90cm,-1.75cm)$)--($(current page.south)+(-4.90cm,0.75cm)$);
\draw[remember picture, overlay, ultra thin, black!50]($(current page.north)+(-4.85cm,-1.75cm)$)--($(current page.south)+(-4.85cm,0.75cm)$);
\end{tikzpicture}
{{ template "mos_00_header.tpl" dict "Cfg" .Cfg "Body" .Body }}
\Repeat{\myNumDailyNotes}{\vspace{0.6cm}\myLineGray}
{{/* {{ template "_common_05_daily.tpl" dict "Cfg" .Cfg "Body" .Body}} */}}
\par\pagebreak
