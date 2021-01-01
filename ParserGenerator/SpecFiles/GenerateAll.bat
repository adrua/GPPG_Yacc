
REM generate a fresh copy of parser.cs
C:\repos\Arkeos\Converters\ArkeosDelphiAnalizer\packages\YaccLexTools.0.2.2\tools\gppg.exe /gplex /nolines gppg.y
move parser.cs ..

REM generate a fresh copy of Scanner.cs
C:\repos\Arkeos\Converters\ArkeosDelphiAnalizer\packages\YaccLexTools.0.2.2\tools\gplex.exe gppg.lex
move Scanner.cs ..

REM generate a fresh copy of ScanAction.cs
C:\repos\Arkeos\Converters\ArkeosDelphiAnalizer\packages\YaccLexTools.0.2.2\tools\gplex.exe ScanAction.lex
move ScanAction.cs ..

if not exist GplexBuffers.cs goto finish
move GplexBuffers.cs ..

:finish
REM Ended

