Add-Type -AssemblyName System.Windows.Forms

#ウインドウがhiddenになるまで待つ
Start-Sleep -Seconds 2

#なんかうまくいかないので別の操作を入れたらどうだろか？と思い、スタートメニューを出した。そしたら、できた。
[System.Windows.Forms.SendKeys]::SendWait("^{esc}")

[System.Windows.Forms.SendKeys]::SendWait("%{f4}")
Start-Sleep -Seconds 2

[System.Windows.Forms.SendKeys]::SendWait("%{f4}")

#なんかaltキーが固定キーモードになるので、一回altキーを押した、するとなぜか解除される。固定キー無効になる？ｓ
[System.Windows.Forms.SendKeys]::SendWait("%")

Start-Sleep -Seconds 2
#休止、スリープの順の場合。シャットダウンの上に、スリープがある場合は、二つ目に＃をつけてください。
[System.Windows.Forms.SendKeys]::SendWait("^{UP}")
[System.Windows.Forms.SendKeys]::SendWait("^{UP}")

Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")


